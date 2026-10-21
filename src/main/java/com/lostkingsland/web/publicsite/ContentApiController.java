package com.lostkingsland.web.publicsite;

import com.lostkingsland.web.config.WebProperties;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/public/content")
public class ContentApiController {
    private final PublicContentRepository repository;
    private final WebProperties properties;
    public ContentApiController(PublicContentRepository repository,WebProperties properties){this.repository=repository;this.properties=properties;}

    @GetMapping("/characters")
    public Object characters(@RequestParam(defaultValue="") String q,@RequestParam(defaultValue="100") int limit){
        if(!properties.useDatabase()) return java.util.List.of();
        return repository.characters(q.trim(),limit);
    }

    @GetMapping("/bosses")
    public Object bosses(@RequestParam(defaultValue="") String q,@RequestParam(defaultValue="") String faction,@RequestParam(defaultValue="150") int limit){
        if(!properties.useDatabase()) return java.util.List.of();
        return repository.bosses(q.trim(),faction.trim().toUpperCase(),limit);
    }

    @GetMapping("/summary")
    public Object summary(){
        if(!properties.useDatabase()) return java.util.Map.of("mode","SNAPSHOT");
        var out=new java.util.LinkedHashMap<String,Object>(repository.liveSummary());
        out.put("gameplayConfig",properties.getGameplayConfig());
        out.put("sharedMediaReady",repository.sharedMediaReady());
        return out;
    }
}
