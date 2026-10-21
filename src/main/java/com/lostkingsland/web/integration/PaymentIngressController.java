package com.lostkingsland.web.integration;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class PaymentIngressController {
    private final IntegrationGateway gateway;

    public PaymentIngressController(IntegrationGateway gateway) { this.gateway = gateway; }

    @GetMapping("/payment/success")
    public String paymentSuccess() { return "forward:/payment-success.html"; }

    @GetMapping("/payment/cancel")
    public String paymentCancel() { return "forward:/payment-cancel.html"; }

    @PostMapping(value = "/api/payments/payos/webhook", consumes = MediaType.ALL_VALUE)
    @ResponseBody
    public ResponseEntity<String> payosWebhook(@RequestBody(required = false) byte[] body, HttpServletRequest request) {
        IntegrationGateway.ForwardResult result = gateway.forwardPayosWebhook(body == null ? new byte[0] : body, request);
        MediaType type;
        try { type = MediaType.parseMediaType(result.contentType()); }
        catch (Exception ignored) { type = MediaType.APPLICATION_JSON; }
        return ResponseEntity.status(result.statusCode()).contentType(type).body(result.body());
    }
}
