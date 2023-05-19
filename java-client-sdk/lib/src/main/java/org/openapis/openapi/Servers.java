/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi;

import java.net.http.HttpResponse;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.openapis.openapi.utils.HTTPClient;
import org.openapis.openapi.utils.HTTPRequest;

/**
 * Endpoints for testing servers.
 */
public class Servers {
	/**
	 * SelectServerWithIDServers contains identifiers for the servers available to the SDK.
	 */ 
    public enum SelectServerWithIDServers {
        /**
         * VALID - The default server.
         */
        VALID("valid"),
        /**
         * BROKEN - A server url to a non-existent server.
         */
        BROKEN("broken");

        public final String server;

        private SelectServerWithIDServers(String server) {
            this.server = server;
        }
    }

    /**
	 * SELECT_SERVER_WITH_ID_SERVERS contains the list of server urls available to the SDK.
	 */
    public static final java.util.Map<SelectServerWithIDServers, String> SELECT_SERVER_WITH_ID_SERVERS = new java.util.HashMap<SelectServerWithIDServers, String>() {{
        put(SelectServerWithIDServers.VALID, "http://localhost:35123");
        put(SelectServerWithIDServers.BROKEN, "http://broken");
    }};
	
    /**
	 * SERVER_WITH_TEMPLATES_SERVERS contains the list of server urls available to the SDK.
	 */
    public static final String[] SERVER_WITH_TEMPLATES_SERVERS = {
        "http://{hostname}:{port}",
    };
	
	private HTTPClient _defaultClient;
	private HTTPClient _securityClient;
	private String _serverUrl;
	private String _language;
	private String _sdkVersion;
	private String _genVersion;
	java.util.Map<String, java.util.Map<String, java.util.Map<String, Object>>> _globals;

	public Servers(HTTPClient defaultClient, HTTPClient securityClient, String serverUrl, String language, String sdkVersion, String genVersion, java.util.Map<String, java.util.Map<String, java.util.Map<String, Object>>> globals) {
		this._defaultClient = defaultClient;
		this._securityClient = securityClient;
		this._serverUrl = serverUrl;
		this._language = language;
		this._sdkVersion = sdkVersion;
		this._genVersion = genVersion;
		this._globals = globals;
	}

    public org.openapis.openapi.models.operations.SelectGlobalServerResponse selectGlobalServer() throws Exception {
        String baseUrl = this._serverUrl;
        String url = org.openapis.openapi.utils.Utils.generateURL(baseUrl, "/anything/selectGlobalServer");
        
        HTTPRequest req = new HTTPRequest();
        req.setMethod("GET");
        req.setURL(url);

        req.addHeader("Accept", "*/*");
        req.addHeader("x-speakeasy-user-agent", String.format("speakeasy-sdk/%s %s %s", this._language, this._sdkVersion, this._genVersion));
        
        HTTPClient client = this._securityClient;
        
        HttpResponse<byte[]> httpRes = client.send(req);

        String contentType = httpRes.headers().firstValue("Content-Type").orElse("application/octet-stream");

        org.openapis.openapi.models.operations.SelectGlobalServerResponse res = new org.openapis.openapi.models.operations.SelectGlobalServerResponse(contentType, httpRes.statusCode()) {{
        }};
        res.rawResponse = httpRes;
        
        if (httpRes.statusCode() == 200) {
            res.headers = httpRes.headers().map().keySet().stream().collect(Collectors.toMap(Function.identity(), k -> httpRes.headers().allValues(k).toArray(new String[0])));
            
        }

        return res;
    }

    /**
     * Select a server by ID.
     * @return the response from the API call
     * @throws Exception if the API call fails
     */
    public org.openapis.openapi.models.operations.SelectServerWithIDResponse selectServerWithID() throws Exception {
        return this.selectServerWithID(null);
    }

    /**
     * Select a server by ID.
     * @param serverURL an optional server URL to use
     * @return the response from the API call
     * @throws Exception if the API call fails
     */
    public org.openapis.openapi.models.operations.SelectServerWithIDResponse selectServerWithID(String serverURL) throws Exception {
        String baseUrl = SELECT_SERVER_WITH_ID_SERVERS.get(SelectServerWithIDServers.VALID);
        if (serverURL != null && !serverURL.isBlank()) {
            baseUrl = serverURL;
        }
        
        String url = org.openapis.openapi.utils.Utils.generateURL(baseUrl, "/anything/selectServerWithID");
        
        HTTPRequest req = new HTTPRequest();
        req.setMethod("GET");
        req.setURL(url);

        req.addHeader("Accept", "*/*");
        req.addHeader("x-speakeasy-user-agent", String.format("speakeasy-sdk/%s %s %s", this._language, this._sdkVersion, this._genVersion));
        
        HTTPClient client = this._securityClient;
        
        HttpResponse<byte[]> httpRes = client.send(req);

        String contentType = httpRes.headers().firstValue("Content-Type").orElse("application/octet-stream");

        org.openapis.openapi.models.operations.SelectServerWithIDResponse res = new org.openapis.openapi.models.operations.SelectServerWithIDResponse(contentType, httpRes.statusCode()) {{
        }};
        res.rawResponse = httpRes;
        
        if (httpRes.statusCode() == 200) {
        }

        return res;
    }

    public org.openapis.openapi.models.operations.ServerWithTemplatesResponse serverWithTemplates() throws Exception {
        return this.serverWithTemplates(null);
    }

    public org.openapis.openapi.models.operations.ServerWithTemplatesResponse serverWithTemplates(String serverURL) throws Exception {
        String baseUrl = SERVER_WITH_TEMPLATES_SERVERS[0];
        if (serverURL != null && !serverURL.isBlank()) {
            baseUrl = serverURL;
        }
        
        String url = org.openapis.openapi.utils.Utils.generateURL(baseUrl, "/anything/serverWithTemplates");
        
        HTTPRequest req = new HTTPRequest();
        req.setMethod("GET");
        req.setURL(url);

        req.addHeader("Accept", "*/*");
        req.addHeader("x-speakeasy-user-agent", String.format("speakeasy-sdk/%s %s %s", this._language, this._sdkVersion, this._genVersion));
        
        HTTPClient client = this._securityClient;
        
        HttpResponse<byte[]> httpRes = client.send(req);

        String contentType = httpRes.headers().firstValue("Content-Type").orElse("application/octet-stream");

        org.openapis.openapi.models.operations.ServerWithTemplatesResponse res = new org.openapis.openapi.models.operations.ServerWithTemplatesResponse(contentType, httpRes.statusCode()) {{
        }};
        res.rawResponse = httpRes;
        
        if (httpRes.statusCode() == 200) {
        }

        return res;
    }

    public org.openapis.openapi.models.operations.ServerWithTemplatesGlobalResponse serverWithTemplatesGlobal() throws Exception {
        String baseUrl = this._serverUrl;
        String url = org.openapis.openapi.utils.Utils.generateURL(baseUrl, "/anything/serverWithTemplatesGlobal");
        
        HTTPRequest req = new HTTPRequest();
        req.setMethod("GET");
        req.setURL(url);

        req.addHeader("Accept", "*/*");
        req.addHeader("x-speakeasy-user-agent", String.format("speakeasy-sdk/%s %s %s", this._language, this._sdkVersion, this._genVersion));
        
        HTTPClient client = this._securityClient;
        
        HttpResponse<byte[]> httpRes = client.send(req);

        String contentType = httpRes.headers().firstValue("Content-Type").orElse("application/octet-stream");

        org.openapis.openapi.models.operations.ServerWithTemplatesGlobalResponse res = new org.openapis.openapi.models.operations.ServerWithTemplatesGlobalResponse(contentType, httpRes.statusCode()) {{
        }};
        res.rawResponse = httpRes;
        
        if (httpRes.statusCode() == 200) {
        }

        return res;
    }
}