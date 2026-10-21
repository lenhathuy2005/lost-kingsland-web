package com.lostkingsland.web.gateway;

import java.util.Map;
import java.util.UUID;
import org.junit.jupiter.api.Test;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.web.server.ResponseStatusException;

import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.*;

class ActionControllerTest {
    @Test void demoSessionCannotInvokeGameplayMutation() {
        GameCoreGateway gateway=mock(GameCoreGateway.class);
        ActionController controller=new ActionController(gateway);
        MockHttpSession session=new MockHttpSession();
        session.setAttribute("playerId",UUID.randomUUID().toString());
        session.setAttribute("authMode","DEMO");
        session.setAttribute("portalCsrf","csrf");
        assertThatThrownBy(()->controller.action("equip","csrf",Map.of(),session))
                .isInstanceOf(ResponseStatusException.class);
        verifyNoInteractions(gateway);
    }

    @Test void discordSessionRequiresCsrfAndUsesAllowlist() {
        GameCoreGateway gateway=mock(GameCoreGateway.class);
        when(gateway.invoke(eq("equip"),any(),any())).thenReturn(Map.of("ok",true));
        ActionController controller=new ActionController(gateway);
        MockHttpSession session=new MockHttpSession();
        session.setAttribute("playerId",UUID.randomUUID().toString());
        session.setAttribute("authMode","DISCORD");
        session.setAttribute("portalCsrf","csrf");
        assertThatThrownBy(()->controller.action("equip","wrong",Map.of(),session))
                .isInstanceOf(ResponseStatusException.class);
        assertThatThrownBy(()->controller.action("unsupported","csrf",Map.of(),session))
                .isInstanceOf(ResponseStatusException.class);
        controller.action("equip","csrf",Map.of("itemInstanceId","x"),session);
        verify(gateway).invoke(eq("equip"),eq((String)session.getAttribute("playerId")),any());
    }
}
