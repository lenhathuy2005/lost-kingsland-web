package com.lostkingsland.web.publicsite;

import com.lostkingsland.web.portal.PortalService;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/api/public")
public class PublicApiController {
    private final PortalService portalService;

    public PublicApiController(PortalService portalService) {
        this.portalService = portalService;
    }

    @GetMapping("/summary")
    public Map<String, Object> summary() {
        return portalService.publicSummary();
    }

    @GetMapping("/rarities")
    public Object rarities() { return portalService.rarities(); }

    @GetMapping("/equipment-sets")
    public Object sets() { return portalService.equipmentSets(); }

    @GetMapping("/catalog")
    public Object catalog(
            @RequestParam(required = false) String q,
            @RequestParam(required = false) String rarity,
            @RequestParam(required = false) String slot,
            @RequestParam(required = false) String set,
            @RequestParam(defaultValue = "true") boolean productionOnly,
            @RequestParam(defaultValue = "120") int limit) {
        return portalService.catalog(q, rarity, slot, set, productionOnly, limit);
    }
}
