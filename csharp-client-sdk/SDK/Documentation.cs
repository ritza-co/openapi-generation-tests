
//------------------------------------------------------------------------------
// <auto-generated>
// This code was generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
//
// Changes to this file may cause incorrect behavior and will be lost when
// the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
#nullable enable
namespace SDK
{
    using SDK.Models.Operations;
    using SDK.Utils;
    using System.Net.Http.Headers;
    using System.Net.Http;
    using System.Threading.Tasks;
    using System;

    /// <summary>
    /// Testing for documentation extensions and tooling.
    /// </summary>
    public interface IDocumentationSDK
    {

        /// <summary>
        /// Gets documentation for some language, I guess.
        /// </summary>
        Task<GetDocumentationPerLanguageResponse> GetDocumentationPerLanguageAsync(string language);
    }

    /// <summary>
    /// Testing for documentation extensions and tooling.
    /// </summary>
    public class DocumentationSDK: IDocumentationSDK
    {
        public SDKConfig Config { get; private set; }
        private const string _language = "csharp";
        private const string _sdkVersion = "0.1.2";
        private const string _sdkGenVersion = "2.173.0";
        private const string _openapiDocVersion = "0.1.0";
        private const string _userAgent = "speakeasy-sdk/csharp 0.1.2 2.173.0 0.1.0 openapi";
        private string _serverUrl = "";
        private ISpeakeasyHttpClient _defaultClient;
        private ISpeakeasyHttpClient _securityClient;

        public DocumentationSDK(ISpeakeasyHttpClient defaultClient, ISpeakeasyHttpClient securityClient, string serverUrl, SDKConfig config)
        {
            _defaultClient = defaultClient;
            _securityClient = securityClient;
            _serverUrl = serverUrl;
            Config = config;
        }
        

        public async Task<GetDocumentationPerLanguageResponse> GetDocumentationPerLanguageAsync(string language)
        {
            var request = new GetDocumentationPerLanguageRequest()
            {
                Language = language,
            };
            string baseUrl = _serverUrl;
            if (baseUrl.EndsWith("/"))
            {
                baseUrl = baseUrl.Substring(0, baseUrl.Length - 1);
            }
            var urlString = URLBuilder.Build(baseUrl, "/docs/per-language-docs", request);
            

            var httpRequest = new HttpRequestMessage(HttpMethod.Get, urlString);
            httpRequest.Headers.Add("x-speakeasy-user-agent", _userAgent);
            
            
            var client = _securityClient;
            
            var httpResponse = await client.SendAsync(httpRequest);

            var contentType = httpResponse.Content.Headers.ContentType?.MediaType;
            
            var response = new GetDocumentationPerLanguageResponse
            {
                StatusCode = (int)httpResponse.StatusCode,
                ContentType = contentType,
                RawResponse = httpResponse
            };
            
            if((response.StatusCode == 200))
            {
                
                return response;
            }
            return response;
        }
        
    }
}