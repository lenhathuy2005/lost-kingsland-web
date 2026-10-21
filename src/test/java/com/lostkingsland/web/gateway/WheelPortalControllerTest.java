package com.lostkingsland.web.gateway;

import java.util.*;
import org.junit.jupiter.api.Test;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.web.server.ResponseStatusException;
import static org.assertj.core.api.Assertions.*;
import static org.mockito.Mockito.*;
import static org.mockito.ArgumentMatchers.*;

class WheelPortalControllerTest {
    @Test void demoAndAnonymousCannotMutate(){
        var gateway=mock(GameCoreGateway.class);var controller=new WheelPortalController(gateway);
        var session=new MockHttpSession();
        assertThatThrownBy(()->controller.session(session)).isInstanceOf(ResponseStatusException.class);
        session.setAttribute("playerId",UUID.randomUUID().toString());session.setAttribute("authMode","DEMO");session.setAttribute("discordUser",Map.of("id","123"));
        assertThatThrownBy(()->controller.action("start","x",new WheelPortalController.Action(null,1,null,UUID.randomUUID()),session)).isInstanceOf(ResponseStatusException.class);
        verifyNoInteractions(gateway);
    }
    @Test void csrfAndSessionIdentityAreMandatory(){
        var gateway=mock(GameCoreGateway.class);var controller=new WheelPortalController(gateway);var session=new MockHttpSession();
        String player=UUID.randomUUID().toString();session.setAttribute("playerId",player);session.setAttribute("authMode","DISCORD");session.setAttribute("discordUser",Map.of("id","123"));
        String csrf=controller.session(session).get("csrf").toString();var action=new WheelPortalController.Action(null,1,null,UUID.randomUUID());
        assertThatThrownBy(()->controller.action("start","wrong",action,session)).isInstanceOf(ResponseStatusException.class);verifyNoInteractions(gateway);
        when(gateway.invokeWheel(anyString(),anyMap())).thenReturn(Map.of("ok",true));
        controller.action("start",csrf,action,session);
        verify(gateway).invokeWheel(eq("start"),argThat(body->player.equals(body.get("playerId"))&&"123".equals(body.get("discordId"))&&action.requestKey().equals(body.get("requestKey"))));
    }
}
