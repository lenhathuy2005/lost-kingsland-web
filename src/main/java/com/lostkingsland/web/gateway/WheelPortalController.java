package com.lostkingsland.web.gateway;

import jakarta.servlet.http.HttpSession;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.*;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

@RestController
@RequestMapping("/api/wheel")
public class WheelPortalController {
    private final GameCoreGateway gateway;
    public WheelPortalController(GameCoreGateway gateway){this.gateway=gateway;}
    private Map<?,?> authenticated(HttpSession session){
        if(!"DISCORD".equals(session.getAttribute("authMode"))||session.getAttribute("playerId")==null
                ||!(session.getAttribute("discordUser") instanceof Map<?,?> user)||user.get("id")==null)
            throw new ResponseStatusException(HttpStatus.UNAUTHORIZED,"Đăng nhập Discord để mở thẻ. Tài khoản demo không được giao dịch.");
        return user;
    }
    @GetMapping("/session")
    public Map<String,Object> session(HttpSession session){
        authenticated(session);
        synchronized(session){if(session.getAttribute("wheelCsrf")==null)session.setAttribute("wheelCsrf",UUID.randomUUID().toString());}
        return Map.of("csrf",session.getAttribute("wheelCsrf"),"playerId",session.getAttribute("playerId"));
    }
    public record Action(UUID transactionId,Integer count,Integer cell,UUID requestKey){}
    @PostMapping("/{action}")
    public Object action(@PathVariable String action,@RequestHeader(value="X-Wheel-CSRF",required=false) String csrf,
                         @RequestBody Action payload,HttpSession session){
        Map<?,?> user=authenticated(session);
        Object expected=session.getAttribute("wheelCsrf");
        if(expected==null||csrf==null||!MessageDigest.isEqual(expected.toString().getBytes(StandardCharsets.UTF_8),csrf.getBytes(StandardCharsets.UTF_8)))
            throw new ResponseStatusException(HttpStatus.FORBIDDEN,"Hãy tải lại trang.");
        if(!Set.of("home","start","open","cash","game").contains(action))throw new ResponseStatusException(HttpStatus.BAD_REQUEST);
        Map<String,Object> request=new LinkedHashMap<>();
        request.put("playerId",session.getAttribute("playerId"));request.put("discordId",user.get("id"));
        request.put("transactionId",payload.transactionId());request.put("count",payload.count());request.put("cell",payload.cell());request.put("requestKey",payload.requestKey());
        return gateway.invokeWheel(action,request);
    }
}
