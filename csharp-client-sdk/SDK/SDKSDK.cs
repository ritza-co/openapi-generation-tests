
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
    using Newtonsoft.Json;
    using SDK.Models.Operations;
    using SDK.Models.Shared;
    using SDK.Utils;
    using System.Collections.Generic;
    using System.Net.Http.Headers;
    using System.Net.Http;
    using System.Threading.Tasks;
    using System;

    /// <summary>
    /// Test: Test Summary
    /// 
    /// <remarks>
    /// Some test description.<br/>
    /// About our test document.
    /// </remarks>
    /// 
    /// <see>https://speakeasyapi.dev/docs/home} - Speakeasy Docs</see>
    /// </summary>
    public interface ISDKSDK
    {

        /// <summary>
        /// Endpoints for testing authentication.
        /// </summary>
        public IAuthSDK Auth { get; }

        /// <summary>
        /// Endpoints for testing authentication.
        /// </summary>
        public IAuthNewSDK AuthNew { get; }

        /// <summary>
        /// Testing for documentation extensions and tooling.
        /// </summary>
        public IDocumentationSDK Documentation { get; }

        /// <summary>
        /// Endpoints for testing error responses.
        /// </summary>
        public IErrorsSDK Errors { get; }
        public IFirstSDK First { get; }

        /// <summary>
        /// Endpoints for testing flattening through request body and parameter combinations.
        /// </summary>
        public IFlatteningSDK Flattening { get; }

        /// <summary>
        /// Endpoints for purely testing valid generation behavior.
        /// </summary>
        public IGenerationSDK Generation { get; }

        /// <summary>
        /// Endpoints for testing global parameters.
        /// </summary>
        public IGlobalsSDK Globals { get; }
        public INestSDK Nest { get; }
        public INestedSDK Nested { get; }

        /// <summary>
        /// Endpoints for testing the pagination extension
        /// </summary>
        public IPaginationSDK Pagination { get; }

        /// <summary>
        /// Endpoints for testing parameters.
        /// </summary>
        public IParametersSDK Parameters { get; }

        /// <summary>
        /// Endpoints for testing request bodies.
        /// </summary>
        public IRequestBodiesSDK RequestBodies { get; }
        public IResourceSDK Resource { get; }

        /// <summary>
        /// Endpoints for testing response bodies.
        /// </summary>
        public IResponseBodiesSDK ResponseBodies { get; }

        /// <summary>
        /// Endpoints for testing retries.
        /// </summary>
        public IRetriesSDK Retries { get; }
        public ISecondSDK Second { get; }

        /// <summary>
        /// Endpoints for testing servers.
        /// </summary>
        public IServersSDK Servers { get; }

        /// <summary>
        /// Endpoints for testing telemetry.
        /// </summary>
        public ITelemetrySDK Telemetry { get; }

        /// <summary>
        /// Endpoints for testing union types.
        /// </summary>
        public IUnionsSDK Unions { get; }
        Task<PutAnythingIgnoredGenerationResponse> PutAnythingIgnoredGenerationAsync(string request);
        Task<ResponseBodyJsonGetResponse> ResponseBodyJsonGetAsync();
    }
    
    public class SDKConfig
    {
        public long? GlobalPathParam;
        public string? GlobalQueryParam;
    }

    /// <summary>
    /// Test: Test Summary
    /// 
    /// <remarks>
    /// Some test description.<br/>
    /// About our test document.
    /// </remarks>
    /// 
    /// <see>https://speakeasyapi.dev/docs/home} - Speakeasy Docs</see>
    /// </summary>
    public class SDKSDK: ISDKSDK
    {
        public SDKConfig Config { get; private set; }
        public static List<string> ServerList = new List<string>()
        {
            "http://localhost:35123",
            "http://broken",
            "http://{hostname}:{port}",
            "http://localhost:35123/anything/{something}",
            "{protocol}://{hostname}:{port}",
        };

        private const string _language = "csharp";
        private const string _sdkVersion = "0.1.2";
        private const string _sdkGenVersion = "2.173.0";
        private const string _openapiDocVersion = "0.1.0";
        private const string _userAgent = "speakeasy-sdk/csharp 0.1.2 2.173.0 0.1.0 openapi";
        private string _serverUrl = "";
        private ISpeakeasyHttpClient _defaultClient;
        private ISpeakeasyHttpClient _securityClient;
        public IAuthSDK Auth { get; private set; }
        public IAuthNewSDK AuthNew { get; private set; }
        public IDocumentationSDK Documentation { get; private set; }
        public IErrorsSDK Errors { get; private set; }
        public IFirstSDK First { get; private set; }
        public IFlatteningSDK Flattening { get; private set; }
        public IGenerationSDK Generation { get; private set; }
        public IGlobalsSDK Globals { get; private set; }
        public INestSDK Nest { get; private set; }
        public INestedSDK Nested { get; private set; }
        public IPaginationSDK Pagination { get; private set; }
        public IParametersSDK Parameters { get; private set; }
        public IRequestBodiesSDK RequestBodies { get; private set; }
        public IResourceSDK Resource { get; private set; }
        public IResponseBodiesSDK ResponseBodies { get; private set; }
        public IRetriesSDK Retries { get; private set; }
        public ISecondSDK Second { get; private set; }
        public IServersSDK Servers { get; private set; }
        public ITelemetrySDK Telemetry { get; private set; }
        public IUnionsSDK Unions { get; private set; }

        public SDKSDK(Security? security = null, long? globalPathParam = null, string? globalQueryParam = null, string? serverUrl = null, ISpeakeasyHttpClient? client = null)
        {
            _serverUrl = serverUrl ?? SDKSDK.ServerList[0];

            _defaultClient = new SpeakeasyHttpClient(client);
            _securityClient = _defaultClient;
            
            if(security != null)
            {
                _securityClient = SecuritySerializer.Apply(_defaultClient, security);
            }
            
            Config = new SDKConfig()
            {
                GlobalPathParam = globalPathParam,
                GlobalQueryParam = globalQueryParam,
            };

            Auth = new AuthSDK(_defaultClient, _securityClient, _serverUrl, Config);
            AuthNew = new AuthNewSDK(_defaultClient, _securityClient, _serverUrl, Config);
            Documentation = new DocumentationSDK(_defaultClient, _securityClient, _serverUrl, Config);
            Errors = new ErrorsSDK(_defaultClient, _securityClient, _serverUrl, Config);
            First = new FirstSDK(_defaultClient, _securityClient, _serverUrl, Config);
            Flattening = new FlatteningSDK(_defaultClient, _securityClient, _serverUrl, Config);
            Generation = new GenerationSDK(_defaultClient, _securityClient, _serverUrl, Config);
            Globals = new GlobalsSDK(_defaultClient, _securityClient, _serverUrl, Config);
            Nest = new NestSDK(_defaultClient, _securityClient, _serverUrl, Config);
            Nested = new NestedSDK(_defaultClient, _securityClient, _serverUrl, Config);
            Pagination = new PaginationSDK(_defaultClient, _securityClient, _serverUrl, Config);
            Parameters = new ParametersSDK(_defaultClient, _securityClient, _serverUrl, Config);
            RequestBodies = new RequestBodiesSDK(_defaultClient, _securityClient, _serverUrl, Config);
            Resource = new ResourceSDK(_defaultClient, _securityClient, _serverUrl, Config);
            ResponseBodies = new ResponseBodiesSDK(_defaultClient, _securityClient, _serverUrl, Config);
            Retries = new RetriesSDK(_defaultClient, _securityClient, _serverUrl, Config);
            Second = new SecondSDK(_defaultClient, _securityClient, _serverUrl, Config);
            Servers = new ServersSDK(_defaultClient, _securityClient, _serverUrl, Config);
            Telemetry = new TelemetrySDK(_defaultClient, _securityClient, _serverUrl, Config);
            Unions = new UnionsSDK(_defaultClient, _securityClient, _serverUrl, Config);
        }

        public async Task<PutAnythingIgnoredGenerationResponse> PutAnythingIgnoredGenerationAsync(string request)
        {
            string baseUrl = _serverUrl;
            if (baseUrl.EndsWith("/"))
            {
                baseUrl = baseUrl.Substring(0, baseUrl.Length - 1);
            }
            var urlString = baseUrl + "/anything/ignoredGeneration";
            

            var httpRequest = new HttpRequestMessage(HttpMethod.Put, urlString);
            httpRequest.Headers.Add("x-speakeasy-user-agent", _userAgent);
            
            var serializedBody = RequestBodySerializer.Serialize(request, "Request", "json");
            if (serializedBody == null) 
            {
                throw new ArgumentNullException("request body is required");
            }
            else
            {
                httpRequest.Content = serializedBody;
            }
            
            var client = _securityClient;
            
            var httpResponse = await client.SendAsync(httpRequest);

            var contentType = httpResponse.Content.Headers.ContentType?.MediaType;
            
            var response = new PutAnythingIgnoredGenerationResponse
            {
                StatusCode = (int)httpResponse.StatusCode,
                ContentType = contentType,
                RawResponse = httpResponse
            };
            
            if((response.StatusCode == 200))
            {
                if(Utilities.IsContentTypeMatch("application/json",response.ContentType))
                {
                    response.PutAnythingIgnoredGeneration200ApplicationJSONObject = JsonConvert.DeserializeObject<PutAnythingIgnoredGeneration200ApplicationJSON>(await httpResponse.Content.ReadAsStringAsync(), new JsonSerializerSettings(){ NullValueHandling = NullValueHandling.Ignore, Converters = new JsonConverter[] { new FlexibleObjectDeserializer(), new EnumSerializer() }});
                }
                
                return response;
            }
            return response;
        }

        public async Task<ResponseBodyJsonGetResponse> ResponseBodyJsonGetAsync()
        {
            string baseUrl = _serverUrl;
            if (baseUrl.EndsWith("/"))
            {
                baseUrl = baseUrl.Substring(0, baseUrl.Length - 1);
            }
            var urlString = baseUrl + "/json";
            

            var httpRequest = new HttpRequestMessage(HttpMethod.Get, urlString);
            httpRequest.Headers.Add("x-speakeasy-user-agent", _userAgent);
            
            
            var client = _securityClient;
            
            var httpResponse = await client.SendAsync(httpRequest);

            var contentType = httpResponse.Content.Headers.ContentType?.MediaType;
            
            var response = new ResponseBodyJsonGetResponse
            {
                StatusCode = (int)httpResponse.StatusCode,
                ContentType = contentType,
                RawResponse = httpResponse
            };
            
            if((response.StatusCode == 200))
            {
                if(Utilities.IsContentTypeMatch("application/json",response.ContentType))
                {
                    response.HttpBinSimpleJsonObject = JsonConvert.DeserializeObject<HttpBinSimpleJsonObject>(await httpResponse.Content.ReadAsStringAsync(), new JsonSerializerSettings(){ NullValueHandling = NullValueHandling.Ignore, Converters = new JsonConverter[] { new FlexibleObjectDeserializer(), new EnumSerializer() }});
                }
                
                return response;
            }
            return response;
        }
    }
}