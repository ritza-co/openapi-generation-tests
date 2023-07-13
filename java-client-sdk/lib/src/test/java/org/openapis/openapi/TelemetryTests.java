/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.Test;
import org.openapis.openapi.models.operations.TelemetrySpeakeasyUserAgentGetResponse;
import org.openapis.openapi.models.operations.TelemetryUserAgentGetResponse;

public class TelemetryTests {
    @Test
    void testTelemetryUserAgentGet() throws Exception {
        Helpers.recordTest("telemetry-user-agent-get");

        SDK s = SDK.builder().build();
        assertNotNull(s);

        TelemetryUserAgentGetResponse res = s.telemetry.telemetryUserAgentGet();

        assertNotNull(res);
        assertEquals(200, res.statusCode);
        assertEquals("speakeasy-sdk/java 1.18.0 2.62.1 0.1.0", res.res.headers.get("X-Speakeasy-User-Agent"));
    }

    @Test
    void testTelemetrySpeakeasyUserAgentGet() throws Exception {
        Helpers.recordTest("telemetry-speakeasy-user-agent-get");

        SDK s = SDK.builder().build();
        assertNotNull(s);

        String userAgent = "test user agent";

        TelemetrySpeakeasyUserAgentGetResponse res = s.telemetry.telemetrySpeakeasyUserAgentGet(userAgent);

        assertNotNull(res);
        assertEquals(200, res.statusCode);
        assertEquals(userAgent, res.res.headers.get("User-Agent"));
        assertEquals("speakeasy-sdk/java 1.18.0 2.62.1 0.1.0", res.res.headers.get("X-Speakeasy-User-Agent"));
    }
}
