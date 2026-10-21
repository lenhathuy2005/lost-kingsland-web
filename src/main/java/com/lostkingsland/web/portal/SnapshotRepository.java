package com.lostkingsland.web.portal;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.annotation.PostConstruct;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Repository;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Repository
public class SnapshotRepository {
    private final ObjectMapper objectMapper;
    private JsonNode root;

    public SnapshotRepository(ObjectMapper objectMapper) {
        this.objectMapper = objectMapper;
    }

    @PostConstruct
    void load() throws IOException {
        try (var in = new ClassPathResource("data/snapshot.json").getInputStream()) {
            root = objectMapper.readTree(in);
        }
    }

    public JsonNode root() { return root; }
    public JsonNode summary() { return root.path("summary"); }
    public JsonNode rarities() { return root.path("rarities"); }
    public JsonNode equipmentSets() { return root.path("equipmentSets"); }
    public JsonNode catalog() { return root.path("catalog"); }

    public List<JsonNode> players() {
        List<JsonNode> result = new ArrayList<>();
        root.path("players").forEach(result::add);
        return result;
    }

    public Optional<JsonNode> player(String id) {
        return players().stream().filter(p -> id.equals(p.path("id").asText())).findFirst();
    }
}
