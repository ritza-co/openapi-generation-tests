/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi;

import com.fasterxml.jackson.databind.ObjectMapper;
import java.net.http.HttpResponse;
import java.nio.charset.StandardCharsets;
import org.openapis.openapi.utils.HTTPClient;
import org.openapis.openapi.utils.HTTPRequest;
import org.openapis.openapi.utils.JSON;
import org.openapis.openapi.utils.SerializedBody;
import org.openapis.openapi.utils.SpeakeasyHTTPClient;

/**
 * Test Summary
 * Some test description.
 * About our test document.
 * https://speakeasyapi.dev/docs/home - Speakeasy Docs
 */
public class SDK {
	/**
	 * SERVERS contains the list of server urls available to the SDK.
	 */
	public static final String[] SERVERS = {
        /**
         * The default server.
         */
        "http://localhost:35123",
        /**
         * A server url to a non-existent server.
         */
        "http://broken",
        /**
         * A server url with templated variables.
         */
        "http://{hostname}:{port}",
	};
	
	
  	
    /**
     * Endpoints for testing authentication.
     */
    public Auth auth;
    /**
     * Endpoints for testing authentication.
     */
    public AuthNew authNew;
    /**
     * Endpoints for testing error responses.
     */
    public Errors errors;
    /**
     * Endpoints for testing flattening through request body and parameter combinations.
     */
    public Flattening flattening;
    /**
     * Endpoints for purely testing valid generation behavior.
     */
    public Generation generation;
    /**
     * Endpoints for testing global parameters.
     */
    public Globals globals;
    /**
     * Endpoints for testing parameters.
     */
    public Parameters parameters;
    /**
     * Endpoints for testing request bodies.
     */
    public RequestBodies requestBodies;
    /**
     * Endpoints for testing response bodies.
     */
    public ResponseBodies responseBodies;
    /**
     * Endpoints for testing servers.
     */
    public Servers servers;
    /**
     * Endpoints for testing union types.
     */
    public Unions unions;	

	private HTTPClient _defaultClient;
	private HTTPClient _securityClient;
	private org.openapis.openapi.models.shared.Security _security;
	private String _serverUrl;
	private String _language = "java";
	private String _sdkVersion = "1.0.1";
	private String _genVersion = "2.29.0";
	java.util.Map<String, java.util.Map<String, java.util.Map<String, Object>>> _globals;
	
	/**
	 * The Builder class allows the configuration of a new instance of the SDK.
	 */
	public static class Builder {
		private HTTPClient client;
		private org.openapis.openapi.models.shared.Security security;
		private String serverUrl;
		private java.util.Map<String, String> params = new java.util.HashMap<String, String>();
		private java.util.Map<String, java.util.Map<String, java.util.Map<String, Object>>> globals = new java.util.HashMap<String, java.util.Map<String, java.util.Map<String, Object>>>(){{
			put("parameters", new java.util.HashMap<String, java.util.Map<String, Object>>());
		}};

		private Builder() {
		}

		/**
		 * Allows the default HTTP client to be overridden with a custom implementation.
		 * @param client The HTTP client to use for all requests.
		 * @return The builder instance.
		 */
		public Builder setClient(HTTPClient client) {
			this.client = client;
			return this;
		}
		
		/**
		 * Configures the SDK to use the provided security details.
		 * @param security The security details to use for all requests.
		 * @return The builder instance.
		 */
		public Builder setSecurity(org.openapis.openapi.models.shared.Security security) {
			this.security = security;
			return this;
		}
		
		/**
		 * Allows the overriding of the default server URL.
		 * @param serverUrl The server URL to use for all requests.
		 * @return The builder instance.
		 */
		public Builder setServerURL(String serverUrl) {
			this.serverUrl = serverUrl;
			return this;
		}
		
		/**
		 * Allows the overriding of the default server URL  with a templated URL populated with the provided parameters.
		 * @param serverUrl The server URL to use for all requests.
		 * @param params The parameters to use when templating the URL.
		 * @return The builder instance.
		 */
		public Builder setServerURL(String serverUrl, java.util.Map<String, String> params) {
			this.serverUrl = serverUrl;
			this.params = params;
			return this;
		}
		
		/**
		 * Allows setting the globalPathParam parameter for all supported operations.
		 * @param globalPathParam The value to set.
		 * @return The builder instance.
		 */
		public Builder setGlobalPathParam(Long globalPathParam) {
			if (!this.globals.get("parameters").containsKey("pathParam")) {
				this.globals.get("parameters").put("pathParam", new java.util.HashMap<String, Object>());
			}

			this.globals.get("parameters").get("pathParam").put("globalPathParam", globalPathParam);

			return this;
		}
		
		/**
		 * Allows setting the globalQueryParam parameter for all supported operations.
		 * @param globalQueryParam The value to set.
		 * @return The builder instance.
		 */
		public Builder setGlobalQueryParam(String globalQueryParam) {
			if (!this.globals.get("parameters").containsKey("queryParam")) {
				this.globals.get("parameters").put("queryParam", new java.util.HashMap<String, Object>());
			}

			this.globals.get("parameters").get("queryParam").put("globalQueryParam", globalQueryParam);

			return this;
		}
		
		/**
		 * Builds a new instance of the SDK.
		 * @return The SDK instance.
		 * @throws Exception Thrown if the SDK could not be built.
		 */
		public SDK build() throws Exception {
			return new SDK(this.client, this.security, this.serverUrl, this.params, this.globals);
		}
	}

	/**
	 * Get a new instance of the SDK builder to configure a new instance of the SDK.
	 * @return The SDK builder instance.
	 */
	public static Builder builder() {
		return new Builder();
	}

	private SDK(HTTPClient client, org.openapis.openapi.models.shared.Security security, String serverUrl, java.util.Map<String, String> params, java.util.Map<String, java.util.Map<String, java.util.Map<String, Object>>> globals) throws Exception {
		this._defaultClient = client;
		
		if (this._defaultClient == null) {
			this._defaultClient = new SpeakeasyHTTPClient();
		}
		
		if (security != null) {
			this._security = security;
			this._securityClient = org.openapis.openapi.utils.Utils.configureSecurityClient(this._defaultClient, this._security);
		}
		
		if (this._securityClient == null) {
			this._securityClient = this._defaultClient;
		}

		if (serverUrl != null && !serverUrl.isBlank()) {
			this._serverUrl = org.openapis.openapi.utils.Utils.templateUrl(serverUrl, params);
		}
		
		if (this._serverUrl == null) {
			this._serverUrl = SERVERS[0];
		}

		if (this._serverUrl.endsWith("/")) {
            this._serverUrl = this._serverUrl.substring(0, this._serverUrl.length() - 1);
        }

		
		this._globals = globals;
		
		this.auth = new Auth(
			this._defaultClient,
			this._securityClient,
			this._serverUrl,
			this._language,
			this._sdkVersion,
			this._genVersion,
			this._globals
		);
		
		this.authNew = new AuthNew(
			this._defaultClient,
			this._securityClient,
			this._serverUrl,
			this._language,
			this._sdkVersion,
			this._genVersion,
			this._globals
		);
		
		this.errors = new Errors(
			this._defaultClient,
			this._securityClient,
			this._serverUrl,
			this._language,
			this._sdkVersion,
			this._genVersion,
			this._globals
		);
		
		this.flattening = new Flattening(
			this._defaultClient,
			this._securityClient,
			this._serverUrl,
			this._language,
			this._sdkVersion,
			this._genVersion,
			this._globals
		);
		
		this.generation = new Generation(
			this._defaultClient,
			this._securityClient,
			this._serverUrl,
			this._language,
			this._sdkVersion,
			this._genVersion,
			this._globals
		);
		
		this.globals = new Globals(
			this._defaultClient,
			this._securityClient,
			this._serverUrl,
			this._language,
			this._sdkVersion,
			this._genVersion,
			this._globals
		);
		
		this.parameters = new Parameters(
			this._defaultClient,
			this._securityClient,
			this._serverUrl,
			this._language,
			this._sdkVersion,
			this._genVersion,
			this._globals
		);
		
		this.requestBodies = new RequestBodies(
			this._defaultClient,
			this._securityClient,
			this._serverUrl,
			this._language,
			this._sdkVersion,
			this._genVersion,
			this._globals
		);
		
		this.responseBodies = new ResponseBodies(
			this._defaultClient,
			this._securityClient,
			this._serverUrl,
			this._language,
			this._sdkVersion,
			this._genVersion,
			this._globals
		);
		
		this.servers = new Servers(
			this._defaultClient,
			this._securityClient,
			this._serverUrl,
			this._language,
			this._sdkVersion,
			this._genVersion,
			this._globals
		);
		
		this.unions = new Unions(
			this._defaultClient,
			this._securityClient,
			this._serverUrl,
			this._language,
			this._sdkVersion,
			this._genVersion,
			this._globals
		);
	}

    public org.openapis.openapi.models.operations.PutAnythingIgnoredGenerationResponse putAnythingIgnoredGeneration(String request) throws Exception {
        String baseUrl = this._serverUrl;
        String url = org.openapis.openapi.utils.Utils.generateURL(baseUrl, "/anything/ignoredGeneration");
        
        HTTPRequest req = new HTTPRequest();
        req.setMethod("PUT");
        req.setURL(url);
        SerializedBody serializedRequestBody = org.openapis.openapi.utils.Utils.serializeRequestBody(request, "request", "string");
        req.setBody(serializedRequestBody);
        
        
        HTTPClient client = this._securityClient;
        
        HttpResponse<byte[]> httpRes = client.send(req);

        String contentType = httpRes.headers().firstValue("Content-Type").orElse("application/octet-stream");

        org.openapis.openapi.models.operations.PutAnythingIgnoredGenerationResponse res = new org.openapis.openapi.models.operations.PutAnythingIgnoredGenerationResponse(contentType, httpRes.statusCode()) {{
            putAnythingIgnoredGeneration200ApplicationJSONObject = null;
        }};
        res.rawResponse = httpRes;
        
        if (httpRes.statusCode() == 200) {
            if (org.openapis.openapi.utils.Utils.matchContentType(contentType, "application/json")) {
                ObjectMapper mapper = JSON.getMapper();
                org.openapis.openapi.models.operations.PutAnythingIgnoredGeneration200ApplicationJSON out = mapper.readValue(new String(httpRes.body(), StandardCharsets.UTF_8), org.openapis.openapi.models.operations.PutAnythingIgnoredGeneration200ApplicationJSON.class);
                res.putAnythingIgnoredGeneration200ApplicationJSONObject = out;
            }
        }

        return res;
    }

    public org.openapis.openapi.models.operations.ResponseBodyJsonGetResponse responseBodyJsonGet() throws Exception {
        String baseUrl = this._serverUrl;
        String url = org.openapis.openapi.utils.Utils.generateURL(baseUrl, "/json");
        
        HTTPRequest req = new HTTPRequest();
        req.setMethod("GET");
        req.setURL(url);
        
        
        HTTPClient client = this._securityClient;
        
        HttpResponse<byte[]> httpRes = client.send(req);

        String contentType = httpRes.headers().firstValue("Content-Type").orElse("application/octet-stream");

        org.openapis.openapi.models.operations.ResponseBodyJsonGetResponse res = new org.openapis.openapi.models.operations.ResponseBodyJsonGetResponse(contentType, httpRes.statusCode()) {{
            httpBinSimpleJsonObject = null;
        }};
        res.rawResponse = httpRes;
        
        if (httpRes.statusCode() == 200) {
            if (org.openapis.openapi.utils.Utils.matchContentType(contentType, "application/json")) {
                ObjectMapper mapper = JSON.getMapper();
                org.openapis.openapi.models.shared.HttpBinSimpleJsonObject out = mapper.readValue(new String(httpRes.body(), StandardCharsets.UTF_8), org.openapis.openapi.models.shared.HttpBinSimpleJsonObject.class);
                res.httpBinSimpleJsonObject = out;
            }
        }

        return res;
    }
}