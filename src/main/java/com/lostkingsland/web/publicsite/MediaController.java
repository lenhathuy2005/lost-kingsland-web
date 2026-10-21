package com.lostkingsland.web.publicsite;

import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.concurrent.TimeUnit;

@RestController
@RequestMapping("/api/public/media")
public class MediaController {
    private final PublicContentRepository repository;
    public MediaController(PublicContentRepository repository){this.repository=repository;}

    @GetMapping("/by-key")
    public ResponseEntity<byte[]> byKey(@RequestParam String key){
        var media=repository.media(key).orElseThrow(() -> new org.springframework.web.server.ResponseStatusException(org.springframework.http.HttpStatus.NOT_FOUND));
        MediaType type;
        try { type=MediaType.parseMediaType(media.contentType()); } catch(Exception e){ type=MediaType.APPLICATION_OCTET_STREAM; }
        return ResponseEntity.ok()
                .contentType(type)
                .cacheControl(CacheControl.maxAge(1, TimeUnit.HOURS).cachePublic())
                .header(HttpHeaders.ETAG,"\""+media.sha256()+"\"")
                .body(media.content());
    }
}
