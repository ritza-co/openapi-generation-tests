/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi;

import com.fasterxml.jackson.databind.ObjectMapper;
import java.net.http.HttpResponse;
import java.nio.charset.StandardCharsets;
import org.apache.http.NameValuePair;
import org.openapis.openapi.utils.HTTPClient;
import org.openapis.openapi.utils.HTTPRequest;
import org.openapis.openapi.utils.JSON;
import org.openapis.openapi.utils.SerializedBody;

/**
 * Endpoints for purely testing valid generation behavior.
 */
public class Generation {
	
	private HTTPClient _defaultClient;
	private HTTPClient _securityClient;
	private String _serverUrl;
	private String _language;
	private String _sdkVersion;
	private String _genVersion;
	java.util.Map<String, java.util.Map<String, java.util.Map<String, Object>>> _globals;

	public Generation(HTTPClient defaultClient, HTTPClient securityClient, String serverUrl, String language, String sdkVersion, String genVersion, java.util.Map<String, java.util.Map<String, java.util.Map<String, Object>>> globals) {
		this._defaultClient = defaultClient;
		this._securityClient = securityClient;
		this._serverUrl = serverUrl;
		this._language = language;
		this._sdkVersion = sdkVersion;
		this._genVersion = genVersion;
		this._globals = globals;
	}

    public org.openapis.openapi.models.operations.AnchorTypesGetResponse anchorTypesGet() throws Exception {
        String baseUrl = this._serverUrl;
        String url = org.openapis.openapi.utils.Utils.generateURL(baseUrl, "/anything/anchorTypes");
        
        HTTPRequest req = new HTTPRequest();
        req.setMethod("GET");
        req.setURL(url);

        req.addHeader("Accept", "application/json");
        req.addHeader("x-speakeasy-user-agent", String.format("speakeasy-sdk/%s %s %s", this._language, this._sdkVersion, this._genVersion));
        
        HTTPClient client = this._securityClient;
        
        HttpResponse<byte[]> httpRes = client.send(req);

        String contentType = httpRes.headers().firstValue("Content-Type").orElse("application/octet-stream");

        org.openapis.openapi.models.operations.AnchorTypesGetResponse res = new org.openapis.openapi.models.operations.AnchorTypesGetResponse(contentType, httpRes.statusCode()) {{
            typeFromAnchor = null;
        }};
        res.rawResponse = httpRes;
        
        if (httpRes.statusCode() == 200) {
            if (org.openapis.openapi.utils.Utils.matchContentType(contentType, "application/json")) {
                ObjectMapper mapper = JSON.getMapper();
                org.openapis.openapi.models.operations.TypeFromAnchor out = mapper.readValue(new String(httpRes.body(), StandardCharsets.UTF_8), org.openapis.openapi.models.operations.TypeFromAnchor.class);
                res.typeFromAnchor = out;
            }
        }

        return res;
    }

    public org.openapis.openapi.models.operations.CircularReferenceGetResponse circularReferenceGet() throws Exception {
        String baseUrl = this._serverUrl;
        String url = org.openapis.openapi.utils.Utils.generateURL(baseUrl, "/anything/circularReference");
        
        HTTPRequest req = new HTTPRequest();
        req.setMethod("GET");
        req.setURL(url);

        req.addHeader("Accept", "application/json");
        req.addHeader("x-speakeasy-user-agent", String.format("speakeasy-sdk/%s %s %s", this._language, this._sdkVersion, this._genVersion));
        
        HTTPClient client = this._securityClient;
        
        HttpResponse<byte[]> httpRes = client.send(req);

        String contentType = httpRes.headers().firstValue("Content-Type").orElse("application/octet-stream");

        org.openapis.openapi.models.operations.CircularReferenceGetResponse res = new org.openapis.openapi.models.operations.CircularReferenceGetResponse(contentType, httpRes.statusCode()) {{
            validCircularReferenceObject = null;
        }};
        res.rawResponse = httpRes;
        
        if (httpRes.statusCode() == 200) {
            if (org.openapis.openapi.utils.Utils.matchContentType(contentType, "application/json")) {
                ObjectMapper mapper = JSON.getMapper();
                org.openapis.openapi.models.shared.ValidCircularReferenceObject out = mapper.readValue(new String(httpRes.body(), StandardCharsets.UTF_8), org.openapis.openapi.models.shared.ValidCircularReferenceObject.class);
                res.validCircularReferenceObject = out;
            }
        }

        return res;
    }

    /**
     * @return the response from the API call
     * @throws Exception if the API call fails
     * @deprecated this method will be removed in a future release, please migrate away from it as soon as possible
     */
    @Deprecated
    public org.openapis.openapi.models.operations.DeprecatedNoCommentsGetResponse deprecatedNoCommentsGet() throws Exception {
        return this.deprecatedNoCommentsGet(null);
    }

    /**
     * @param deprecatedParameter
     * @return the response from the API call
     * @throws Exception if the API call fails
     * @deprecated this method will be removed in a future release, please migrate away from it as soon as possible
     */
    @Deprecated
    public org.openapis.openapi.models.operations.DeprecatedNoCommentsGetResponse deprecatedNoCommentsGet(String deprecatedParameter) throws Exception {
        org.openapis.openapi.models.operations.DeprecatedNoCommentsGetRequest request = new org.openapis.openapi.models.operations.DeprecatedNoCommentsGetRequest();
        request.deprecatedParameter=deprecatedParameter;
        
        String baseUrl = this._serverUrl;
        String url = org.openapis.openapi.utils.Utils.generateURL(baseUrl, "/anything/deprecatedNoComments");
        
        HTTPRequest req = new HTTPRequest();
        req.setMethod("GET");
        req.setURL(url);

        req.addHeader("Accept", "*/*");
        req.addHeader("x-speakeasy-user-agent", String.format("speakeasy-sdk/%s %s %s", this._language, this._sdkVersion, this._genVersion));
        java.util.List<NameValuePair> queryParams = org.openapis.openapi.utils.Utils.getQueryParams(org.openapis.openapi.models.operations.DeprecatedNoCommentsGetRequest.class, request, this._globals);
        if (queryParams != null) {
            for (NameValuePair queryParam : queryParams) {
                req.addQueryParam(queryParam);
            }
        }
        
        HTTPClient client = this._securityClient;
        
        HttpResponse<byte[]> httpRes = client.send(req);

        String contentType = httpRes.headers().firstValue("Content-Type").orElse("application/octet-stream");

        org.openapis.openapi.models.operations.DeprecatedNoCommentsGetResponse res = new org.openapis.openapi.models.operations.DeprecatedNoCommentsGetResponse(contentType, httpRes.statusCode()) {{
        }};
        res.rawResponse = httpRes;
        
        if (httpRes.statusCode() == 200) {
        }

        return res;
    }

    /**
     * This is an endpoint setup to test deprecation with comments
     * @return the response from the API call
     * @throws Exception if the API call fails
     * @deprecated this method will be removed in a future release, please migrate away from it as soon as possible. Use simplePathParameterObjects instead
     */
    @Deprecated
    public org.openapis.openapi.models.operations.DeprecatedWithCommentsGetResponse deprecatedWithCommentsGet() throws Exception {
        return this.deprecatedWithCommentsGet(null, null);
    }

    /**
     * This is an endpoint setup to test deprecation with comments
     * @param deprecatedParameter This is a string parameter
     * @return the response from the API call
     * @throws Exception if the API call fails
     * @deprecated this method will be removed in a future release, please migrate away from it as soon as possible. Use simplePathParameterObjects instead
     */
    @Deprecated
    public org.openapis.openapi.models.operations.DeprecatedWithCommentsGetResponse deprecatedWithCommentsGet(String deprecatedParameter) throws Exception {
        return this.deprecatedWithCommentsGet(deprecatedParameter, null);
    }

    /**
     * This is an endpoint setup to test deprecation with comments
     * @param deprecatedParameter This is a string parameter
     * @param newParameter This is a string parameter
     * @return the response from the API call
     * @throws Exception if the API call fails
     * @deprecated this method will be removed in a future release, please migrate away from it as soon as possible. Use simplePathParameterObjects instead
     */
    @Deprecated
    public org.openapis.openapi.models.operations.DeprecatedWithCommentsGetResponse deprecatedWithCommentsGet(String deprecatedParameter, String newParameter) throws Exception {
        org.openapis.openapi.models.operations.DeprecatedWithCommentsGetRequest request = new org.openapis.openapi.models.operations.DeprecatedWithCommentsGetRequest();
        request.deprecatedParameter=deprecatedParameter;
        request.newParameter=newParameter;
        
        String baseUrl = this._serverUrl;
        String url = org.openapis.openapi.utils.Utils.generateURL(baseUrl, "/anything/deprecatedWithComments");
        
        HTTPRequest req = new HTTPRequest();
        req.setMethod("GET");
        req.setURL(url);

        req.addHeader("Accept", "*/*");
        req.addHeader("x-speakeasy-user-agent", String.format("speakeasy-sdk/%s %s %s", this._language, this._sdkVersion, this._genVersion));
        java.util.List<NameValuePair> queryParams = org.openapis.openapi.utils.Utils.getQueryParams(org.openapis.openapi.models.operations.DeprecatedWithCommentsGetRequest.class, request, this._globals);
        if (queryParams != null) {
            for (NameValuePair queryParam : queryParams) {
                req.addQueryParam(queryParam);
            }
        }
        
        HTTPClient client = this._securityClient;
        
        HttpResponse<byte[]> httpRes = client.send(req);

        String contentType = httpRes.headers().firstValue("Content-Type").orElse("application/octet-stream");

        org.openapis.openapi.models.operations.DeprecatedWithCommentsGetResponse res = new org.openapis.openapi.models.operations.DeprecatedWithCommentsGetResponse(contentType, httpRes.statusCode()) {{
        }};
        res.rawResponse = httpRes;
        
        if (httpRes.statusCode() == 200) {
        }

        return res;
    }

    public org.openapis.openapi.models.operations.GetGlobalNameOverrideResponse globalNameOverridden() throws Exception {
        String baseUrl = this._serverUrl;
        String url = org.openapis.openapi.utils.Utils.generateURL(baseUrl, "/anything/globalNameOverride");
        
        HTTPRequest req = new HTTPRequest();
        req.setMethod("GET");
        req.setURL(url);

        req.addHeader("Accept", "application/json");
        req.addHeader("x-speakeasy-user-agent", String.format("speakeasy-sdk/%s %s %s", this._language, this._sdkVersion, this._genVersion));
        
        HTTPClient client = this._securityClient;
        
        HttpResponse<byte[]> httpRes = client.send(req);

        String contentType = httpRes.headers().firstValue("Content-Type").orElse("application/octet-stream");

        org.openapis.openapi.models.operations.GetGlobalNameOverrideResponse res = new org.openapis.openapi.models.operations.GetGlobalNameOverrideResponse(contentType, httpRes.statusCode()) {{
            getGlobalNameOverride200ApplicationJSONObject = null;
        }};
        res.rawResponse = httpRes;
        
        if (httpRes.statusCode() == 200) {
            if (org.openapis.openapi.utils.Utils.matchContentType(contentType, "application/json")) {
                ObjectMapper mapper = JSON.getMapper();
                org.openapis.openapi.models.operations.GetGlobalNameOverride200ApplicationJSON out = mapper.readValue(new String(httpRes.body(), StandardCharsets.UTF_8), org.openapis.openapi.models.operations.GetGlobalNameOverride200ApplicationJSON.class);
                res.getGlobalNameOverride200ApplicationJSONObject = out;
            }
        }

        return res;
    }

    public org.openapis.openapi.models.operations.IgnoredGenerationGetResponse ignoredGenerationGet() throws Exception {
        String baseUrl = this._serverUrl;
        String url = org.openapis.openapi.utils.Utils.generateURL(baseUrl, "/anything/ignoredGeneration");
        
        HTTPRequest req = new HTTPRequest();
        req.setMethod("GET");
        req.setURL(url);

        req.addHeader("Accept", "application/json");
        req.addHeader("x-speakeasy-user-agent", String.format("speakeasy-sdk/%s %s %s", this._language, this._sdkVersion, this._genVersion));
        
        HTTPClient client = this._securityClient;
        
        HttpResponse<byte[]> httpRes = client.send(req);

        String contentType = httpRes.headers().firstValue("Content-Type").orElse("application/octet-stream");

        org.openapis.openapi.models.operations.IgnoredGenerationGetResponse res = new org.openapis.openapi.models.operations.IgnoredGenerationGetResponse(contentType, httpRes.statusCode()) {{
            ignoredGenerationGet200ApplicationJSONObject = null;
        }};
        res.rawResponse = httpRes;
        
        if (httpRes.statusCode() == 200) {
            if (org.openapis.openapi.utils.Utils.matchContentType(contentType, "application/json")) {
                ObjectMapper mapper = JSON.getMapper();
                org.openapis.openapi.models.operations.IgnoredGenerationGet200ApplicationJSON out = mapper.readValue(new String(httpRes.body(), StandardCharsets.UTF_8), org.openapis.openapi.models.operations.IgnoredGenerationGet200ApplicationJSON.class);
                res.ignoredGenerationGet200ApplicationJSONObject = out;
            }
        }

        return res;
    }

    public org.openapis.openapi.models.operations.IgnoresPostResponse ignoresPost() throws Exception {
        return this.ignoresPost(null, null);
    }

    public org.openapis.openapi.models.operations.IgnoresPostResponse ignoresPost(String testParam) throws Exception {
        return this.ignoresPost(null, testParam);
    }

    public org.openapis.openapi.models.operations.IgnoresPostResponse ignoresPost(org.openapis.openapi.models.operations.IgnoresPostApplicationJSON requestBody) throws Exception {
        return this.ignoresPost(requestBody, null);
    }

    public org.openapis.openapi.models.operations.IgnoresPostResponse ignoresPost(org.openapis.openapi.models.operations.IgnoresPostApplicationJSON requestBody, String testParam) throws Exception {
        org.openapis.openapi.models.operations.IgnoresPostRequest request = new org.openapis.openapi.models.operations.IgnoresPostRequest();
        request.requestBody=requestBody;
        request.testParam=testParam;
        
        String baseUrl = this._serverUrl;
        String url = org.openapis.openapi.utils.Utils.generateURL(baseUrl, "/anything/ignores");
        
        HTTPRequest req = new HTTPRequest();
        req.setMethod("POST");
        req.setURL(url);
        SerializedBody serializedRequestBody = org.openapis.openapi.utils.Utils.serializeRequestBody(request, "requestBody", "json");
        req.setBody(serializedRequestBody);

        req.addHeader("Accept", "application/json");
        req.addHeader("x-speakeasy-user-agent", String.format("speakeasy-sdk/%s %s %s", this._language, this._sdkVersion, this._genVersion));
        java.util.List<NameValuePair> queryParams = org.openapis.openapi.utils.Utils.getQueryParams(org.openapis.openapi.models.operations.IgnoresPostRequest.class, request, this._globals);
        if (queryParams != null) {
            for (NameValuePair queryParam : queryParams) {
                req.addQueryParam(queryParam);
            }
        }
        
        HTTPClient client = this._securityClient;
        
        HttpResponse<byte[]> httpRes = client.send(req);

        String contentType = httpRes.headers().firstValue("Content-Type").orElse("application/octet-stream");

        org.openapis.openapi.models.operations.IgnoresPostResponse res = new org.openapis.openapi.models.operations.IgnoresPostResponse(contentType, httpRes.statusCode()) {{
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

    public org.openapis.openapi.models.operations.NameOverrideGetResponse nameOverride(String testQueryParam) throws Exception {
        org.openapis.openapi.models.operations.NameOverrideGetRequest request = new org.openapis.openapi.models.operations.NameOverrideGetRequest(testQueryParam);
        
        String baseUrl = this._serverUrl;
        String url = org.openapis.openapi.utils.Utils.generateURL(baseUrl, "/anything/nameOverride");
        
        HTTPRequest req = new HTTPRequest();
        req.setMethod("GET");
        req.setURL(url);

        req.addHeader("Accept", "application/json");
        req.addHeader("x-speakeasy-user-agent", String.format("speakeasy-sdk/%s %s %s", this._language, this._sdkVersion, this._genVersion));
        java.util.List<NameValuePair> queryParams = org.openapis.openapi.utils.Utils.getQueryParams(org.openapis.openapi.models.operations.NameOverrideGetRequest.class, request, this._globals);
        if (queryParams != null) {
            for (NameValuePair queryParam : queryParams) {
                req.addQueryParam(queryParam);
            }
        }
        
        HTTPClient client = this._securityClient;
        
        HttpResponse<byte[]> httpRes = client.send(req);

        String contentType = httpRes.headers().firstValue("Content-Type").orElse("application/octet-stream");

        org.openapis.openapi.models.operations.NameOverrideGetResponse res = new org.openapis.openapi.models.operations.NameOverrideGetResponse(contentType, httpRes.statusCode()) {{
            overridenResponse = null;
        }};
        res.rawResponse = httpRes;
        
        if (httpRes.statusCode() == 200) {
            if (org.openapis.openapi.utils.Utils.matchContentType(contentType, "application/json")) {
                ObjectMapper mapper = JSON.getMapper();
                org.openapis.openapi.models.operations.OverridenResponse out = mapper.readValue(new String(httpRes.body(), StandardCharsets.UTF_8), org.openapis.openapi.models.operations.OverridenResponse.class);
                res.overridenResponse = out;
            }
        }

        return res;
    }

    /**
     * An operation used for testing usage examples
     * An operation used for testing usage examples that includes a large array of parameters and input types to ensure that all are handled correctly
     * https://docs.example.com - Usage example docs
     * @param request the request object containing all of the parameters for the API call
     * @param security the security details to use for authentication
     * @return the response from the API call
     * @throws Exception if the API call fails
     */
    public org.openapis.openapi.models.operations.UsageExamplePostResponse usageExamplePost(org.openapis.openapi.models.operations.UsageExamplePostRequest request, org.openapis.openapi.models.operations.UsageExamplePostSecurity security) throws Exception {
        String baseUrl = this._serverUrl;
        String url = org.openapis.openapi.utils.Utils.generateURL(baseUrl, "/anything/usageExample");
        
        HTTPRequest req = new HTTPRequest();
        req.setMethod("POST");
        req.setURL(url);
        SerializedBody serializedRequestBody = org.openapis.openapi.utils.Utils.serializeRequestBody(request, "requestBody", "json");
        req.setBody(serializedRequestBody);

        req.addHeader("Accept", "application/json");
        req.addHeader("x-speakeasy-user-agent", String.format("speakeasy-sdk/%s %s %s", this._language, this._sdkVersion, this._genVersion));
        java.util.List<NameValuePair> queryParams = org.openapis.openapi.utils.Utils.getQueryParams(org.openapis.openapi.models.operations.UsageExamplePostRequest.class, request, this._globals);
        if (queryParams != null) {
            for (NameValuePair queryParam : queryParams) {
                req.addQueryParam(queryParam);
            }
        }
        
        HTTPClient client = org.openapis.openapi.utils.Utils.configureSecurityClient(this._defaultClient, security);
        
        HttpResponse<byte[]> httpRes = client.send(req);

        String contentType = httpRes.headers().firstValue("Content-Type").orElse("application/octet-stream");

        org.openapis.openapi.models.operations.UsageExamplePostResponse res = new org.openapis.openapi.models.operations.UsageExamplePostResponse(contentType, httpRes.statusCode()) {{
            usageExamplePost200ApplicationJSONObject = null;
        }};
        res.rawResponse = httpRes;
        
        if (httpRes.statusCode() == 200) {
            if (org.openapis.openapi.utils.Utils.matchContentType(contentType, "application/json")) {
                ObjectMapper mapper = JSON.getMapper();
                org.openapis.openapi.models.operations.UsageExamplePost200ApplicationJSON out = mapper.readValue(new String(httpRes.body(), StandardCharsets.UTF_8), org.openapis.openapi.models.operations.UsageExamplePost200ApplicationJSON.class);
                res.usageExamplePost200ApplicationJSONObject = out;
            }
        }

        return res;
    }
}