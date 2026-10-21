package com.lostkingsland.web;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.Test;

import java.io.InputStream;

import static org.assertj.core.api.Assertions.assertThat;

class SnapshotDataIntegrityTest {
    @Test
    void snapshotMatchesFinalV27DatabaseDump() throws Exception {
        try (InputStream in = getClass().getResourceAsStream("/data/snapshot.json")) {
            assertThat(in).isNotNull();
            var root = new ObjectMapper().readTree(in);
            assertThat(root.path("summary").path("catalogTotal").asInt()).isEqualTo(480);
            assertThat(root.path("summary").path("productionItems").asInt()).isEqualTo(480);
            assertThat(root.path("summary").path("sampleBalanceItems").asInt()).isEqualTo(0);
            assertThat(root.path("summary").path("rarityCount").asInt()).isEqualTo(10);
            assertThat(root.path("summary").path("equipmentSets").asInt()).isEqualTo(20);
            assertThat(root.path("summary").path("setBonuses").asInt()).isEqualTo(80);
            assertThat(root.path("summary").path("characters").asInt()).isEqualTo(40);
            assertThat(root.path("summary").path("bosses").asInt()).isEqualTo(100);
            assertThat(root.path("players").size()).isEqualTo(1);
        }
    }
}
