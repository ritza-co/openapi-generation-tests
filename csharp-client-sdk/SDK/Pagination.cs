
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
    using Newtonsoft.Json.Linq;
    using Newtonsoft.Json;
    using SDK.Models.Operations;
    using SDK.Models.Shared;
    using SDK.Utils;
    using System.Collections.Generic;
    using System.Linq;
    using System.Net.Http.Headers;
    using System.Net.Http;
    using System.Threading.Tasks;
    using System;

    /// <summary>
    /// Endpoints for testing the pagination extension
    /// </summary>
    public interface IPaginationSDK
    {
        Task<PaginationCursorBodyResponse> PaginationCursorBodyAsync(PaginationCursorBodyRequestBody request, string? serverUrl = null);
        Task<PaginationCursorParamsResponse> PaginationCursorParamsAsync(long cursor, string? serverUrl = null);
        Task<PaginationLimitOffsetOffsetBodyResponse> PaginationLimitOffsetOffsetBodyAsync(LimitOffsetConfig request, string? serverUrl = null);
        Task<PaginationLimitOffsetOffsetParamsResponse> PaginationLimitOffsetOffsetParamsAsync(long? limit = null, long? offset = null, string? serverUrl = null);
        Task<PaginationLimitOffsetPageBodyResponse> PaginationLimitOffsetPageBodyAsync(LimitOffsetConfig request, string? serverUrl = null);
        Task<PaginationLimitOffsetPageParamsResponse> PaginationLimitOffsetPageParamsAsync(long page, string? serverUrl = null);
    }

    /// <summary>
    /// Endpoints for testing the pagination extension
    /// </summary>
    public class PaginationSDK: IPaginationSDK
    {
        /**
        * PaginationCursorBodySERVERS contains the list of server urls available to the SDK.
        */
        public static readonly string[] PaginationCursorBodySERVERS = {
            "http://localhost:35456",
        };

        /**
        * PaginationCursorParamsSERVERS contains the list of server urls available to the SDK.
        */
        public static readonly string[] PaginationCursorParamsSERVERS = {
            "http://localhost:35456",
        };

        /**
        * PaginationLimitOffsetOffsetBodySERVERS contains the list of server urls available to the SDK.
        */
        public static readonly string[] PaginationLimitOffsetOffsetBodySERVERS = {
            "http://localhost:35456",
        };

        /**
        * PaginationLimitOffsetOffsetParamsSERVERS contains the list of server urls available to the SDK.
        */
        public static readonly string[] PaginationLimitOffsetOffsetParamsSERVERS = {
            "http://localhost:35456",
        };

        /**
        * PaginationLimitOffsetPageBodySERVERS contains the list of server urls available to the SDK.
        */
        public static readonly string[] PaginationLimitOffsetPageBodySERVERS = {
            "http://localhost:35456",
        };

        /**
        * PaginationLimitOffsetPageParamsSERVERS contains the list of server urls available to the SDK.
        */
        public static readonly string[] PaginationLimitOffsetPageParamsSERVERS = {
            "http://localhost:35456",
        };

        public SDKConfig Config { get; private set; }
        private const string _language = "csharp";
        private const string _sdkVersion = "0.1.0";
        private const string _sdkGenVersion = "2.171.0";
        private const string _openapiDocVersion = "0.1.0";
        private const string _userAgent = "speakeasy-sdk/csharp 0.1.0 2.171.0 0.1.0 openapi";
        private string _serverUrl = "";
        private ISpeakeasyHttpClient _defaultClient;
        private ISpeakeasyHttpClient _securityClient;

        public PaginationSDK(ISpeakeasyHttpClient defaultClient, ISpeakeasyHttpClient securityClient, string serverUrl, SDKConfig config)
        {
            _defaultClient = defaultClient;
            _securityClient = securityClient;
            _serverUrl = serverUrl;
            Config = config;
        }
        

        public async Task<PaginationCursorBodyResponse> PaginationCursorBodyAsync(PaginationCursorBodyRequestBody request, string? serverUrl = null)
        {
            string baseUrl = PaginationCursorBodySERVERS[0];
            if (!string.IsNullOrEmpty(serverUrl)) {
                baseUrl = serverUrl;
            }
            if (baseUrl.EndsWith("/"))
            {
                baseUrl = baseUrl.Substring(0, baseUrl.Length - 1);
            }
            var urlString = baseUrl + "/pagination/cursor";
            

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
            
            Func<Task<PaginationCursorBodyResponse?>> nextFunc = async delegate() {
                var body = JObject.Parse(await httpResponse.Content.ReadAsStringAsync());

                if (request == null) 
                {
                    return null;
                }
                var nextCursorToken = body.SelectToken("$.resultArray[-1:]");

                if(nextCursorToken == null) {
                    return null;
                };

                var nextCursor = nextCursorToken.Value<long>();


                return await PaginationCursorBodyAsync(
                    request: new PaginationCursorBodyRequestBody{
                        Cursor = nextCursor
                    },
                    serverUrl: serverUrl
                );
            };

            var contentType = httpResponse.Content.Headers.ContentType?.MediaType;
            
            var response = new PaginationCursorBodyResponse
            {
                StatusCode = (int)httpResponse.StatusCode,
                ContentType = contentType,
                RawResponse = httpResponse, 
                Next = nextFunc
            };
            
            if((response.StatusCode == 200))
            {
                if(Utilities.IsContentTypeMatch("application/json",response.ContentType))
                {
                    response.Res = JsonConvert.DeserializeObject<PaginationCursorBodyRes>(await httpResponse.Content.ReadAsStringAsync(), new JsonSerializerSettings(){ NullValueHandling = NullValueHandling.Ignore, Converters = new JsonConverter[] { new FlexibleObjectDeserializer(), new EnumSerializer() }});
                }
                
                return response;
            }
            return response;
        }
        

        public async Task<PaginationCursorParamsResponse> PaginationCursorParamsAsync(long cursor, string? serverUrl = null)
        {
            var request = new PaginationCursorParamsRequest()
            {
                Cursor = cursor,
            };
            string baseUrl = PaginationCursorParamsSERVERS[0];
            if (!string.IsNullOrEmpty(serverUrl)) {
                baseUrl = serverUrl;
            }
            if (baseUrl.EndsWith("/"))
            {
                baseUrl = baseUrl.Substring(0, baseUrl.Length - 1);
            }
            var urlString = URLBuilder.Build(baseUrl, "/pagination/cursor", request);
            

            var httpRequest = new HttpRequestMessage(HttpMethod.Get, urlString);
            httpRequest.Headers.Add("x-speakeasy-user-agent", _userAgent);
            
            
            var client = _securityClient;
            
            var httpResponse = await client.SendAsync(httpRequest);
            
            Func<Task<PaginationCursorParamsResponse?>> nextFunc = async delegate() {
                var body = JObject.Parse(await httpResponse.Content.ReadAsStringAsync());

                if (request == null) 
                {
                    return null;
                }
                var nextCursorToken = body.SelectToken("$.resultArray[-1:]");

                if(nextCursorToken == null) {
                    return null;
                };

                var nextCursor = nextCursorToken.Value<long>();


                return await PaginationCursorParamsAsync(
                    cursor: nextCursor,
                    serverUrl: serverUrl
                );
            };

            var contentType = httpResponse.Content.Headers.ContentType?.MediaType;
            
            var response = new PaginationCursorParamsResponse
            {
                StatusCode = (int)httpResponse.StatusCode,
                ContentType = contentType,
                RawResponse = httpResponse, 
                Next = nextFunc
            };
            
            if((response.StatusCode == 200))
            {
                if(Utilities.IsContentTypeMatch("application/json",response.ContentType))
                {
                    response.Res = JsonConvert.DeserializeObject<PaginationCursorParamsRes>(await httpResponse.Content.ReadAsStringAsync(), new JsonSerializerSettings(){ NullValueHandling = NullValueHandling.Ignore, Converters = new JsonConverter[] { new FlexibleObjectDeserializer(), new EnumSerializer() }});
                }
                
                return response;
            }
            return response;
        }
        

        public async Task<PaginationLimitOffsetOffsetBodyResponse> PaginationLimitOffsetOffsetBodyAsync(LimitOffsetConfig request, string? serverUrl = null)
        {
            string baseUrl = PaginationLimitOffsetOffsetBodySERVERS[0];
            if (!string.IsNullOrEmpty(serverUrl)) {
                baseUrl = serverUrl;
            }
            if (baseUrl.EndsWith("/"))
            {
                baseUrl = baseUrl.Substring(0, baseUrl.Length - 1);
            }
            var urlString = baseUrl + "/pagination/limitoffset/offset";
            

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
            
            Func<Task<PaginationLimitOffsetOffsetBodyResponse?>> nextFunc = async delegate() {
                var body = JObject.Parse(await httpResponse.Content.ReadAsStringAsync());

                if (request == null) 
                {
                    return null;
                }
                var offset = request.Offset;
                var firstResult = body.SelectToken("$.resultArray");
                if (firstResult == null) {
                    return null;
                };
                
                if ( firstResult.Children().Count() == 0) {
                    return null;
                };
                var limit = request.Limit;
                if (firstResult.Children().Count() < limit) {
                    return null;
                };
                var newOffset = offset + firstResult.Children().Count();


                return await PaginationLimitOffsetOffsetBodyAsync(
                    request: new LimitOffsetConfig{
                        Limit = request.Limit,
                        Offset = newOffset,
                        Page = request.Page
                    },
                    serverUrl: serverUrl
                );
            };

            var contentType = httpResponse.Content.Headers.ContentType?.MediaType;
            
            var response = new PaginationLimitOffsetOffsetBodyResponse
            {
                StatusCode = (int)httpResponse.StatusCode,
                ContentType = contentType,
                RawResponse = httpResponse, 
                Next = nextFunc
            };
            
            if((response.StatusCode == 200))
            {
                if(Utilities.IsContentTypeMatch("application/json",response.ContentType))
                {
                    response.Res = JsonConvert.DeserializeObject<PaginationLimitOffsetOffsetBodyRes>(await httpResponse.Content.ReadAsStringAsync(), new JsonSerializerSettings(){ NullValueHandling = NullValueHandling.Ignore, Converters = new JsonConverter[] { new FlexibleObjectDeserializer(), new EnumSerializer() }});
                }
                
                return response;
            }
            return response;
        }
        

        public async Task<PaginationLimitOffsetOffsetParamsResponse> PaginationLimitOffsetOffsetParamsAsync(long? limit = null, long? offset = null, string? serverUrl = null)
        {
            var request = new PaginationLimitOffsetOffsetParamsRequest()
            {
                Limit = limit,
                Offset = offset,
            };
            string baseUrl = PaginationLimitOffsetOffsetParamsSERVERS[0];
            if (!string.IsNullOrEmpty(serverUrl)) {
                baseUrl = serverUrl;
            }
            if (baseUrl.EndsWith("/"))
            {
                baseUrl = baseUrl.Substring(0, baseUrl.Length - 1);
            }
            var urlString = URLBuilder.Build(baseUrl, "/pagination/limitoffset/offset", request);
            

            var httpRequest = new HttpRequestMessage(HttpMethod.Get, urlString);
            httpRequest.Headers.Add("x-speakeasy-user-agent", _userAgent);
            
            
            var client = _securityClient;
            
            var httpResponse = await client.SendAsync(httpRequest);
            
            Func<Task<PaginationLimitOffsetOffsetParamsResponse?>> nextFunc = async delegate() {
                var body = JObject.Parse(await httpResponse.Content.ReadAsStringAsync());

                if (request == null) 
                {
                    return null;
                }
                var offset = request.Offset;
                var firstResult = body.SelectToken("$.resultArray");
                if (firstResult == null) {
                    return null;
                };
                
                if ( firstResult.Children().Count() == 0) {
                    return null;
                };
                var limit = request.Limit;
                if (firstResult.Children().Count() < limit) {
                    return null;
                };
                var newOffset = offset + firstResult.Children().Count();


                return await PaginationLimitOffsetOffsetParamsAsync(
                    limit,
                    offset: newOffset,
                    serverUrl: serverUrl
                );
            };

            var contentType = httpResponse.Content.Headers.ContentType?.MediaType;
            
            var response = new PaginationLimitOffsetOffsetParamsResponse
            {
                StatusCode = (int)httpResponse.StatusCode,
                ContentType = contentType,
                RawResponse = httpResponse, 
                Next = nextFunc
            };
            
            if((response.StatusCode == 200))
            {
                if(Utilities.IsContentTypeMatch("application/json",response.ContentType))
                {
                    response.Res = JsonConvert.DeserializeObject<PaginationLimitOffsetOffsetParamsRes>(await httpResponse.Content.ReadAsStringAsync(), new JsonSerializerSettings(){ NullValueHandling = NullValueHandling.Ignore, Converters = new JsonConverter[] { new FlexibleObjectDeserializer(), new EnumSerializer() }});
                }
                
                return response;
            }
            return response;
        }
        

        public async Task<PaginationLimitOffsetPageBodyResponse> PaginationLimitOffsetPageBodyAsync(LimitOffsetConfig request, string? serverUrl = null)
        {
            string baseUrl = PaginationLimitOffsetPageBodySERVERS[0];
            if (!string.IsNullOrEmpty(serverUrl)) {
                baseUrl = serverUrl;
            }
            if (baseUrl.EndsWith("/"))
            {
                baseUrl = baseUrl.Substring(0, baseUrl.Length - 1);
            }
            var urlString = baseUrl + "/pagination/limitoffset/page";
            

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
            
            Func<Task<PaginationLimitOffsetPageBodyResponse?>> nextFunc = async delegate() {
                var body = JObject.Parse(await httpResponse.Content.ReadAsStringAsync());

                if (request == null) 
                {
                    return null;
                }
                var page = request.Page;
                var newPage = page + 1;
                
                var numPages = body.SelectToken("$.numPages");

                if (numPages == null || numPages.Value<long>() <= page) {
                    return null;
                };


                return await PaginationLimitOffsetPageBodyAsync(
                    request: new LimitOffsetConfig{
                        Limit = request.Limit,
                        Offset = request.Offset,
                        Page = newPage
                    },
                    serverUrl: serverUrl
                );
            };

            var contentType = httpResponse.Content.Headers.ContentType?.MediaType;
            
            var response = new PaginationLimitOffsetPageBodyResponse
            {
                StatusCode = (int)httpResponse.StatusCode,
                ContentType = contentType,
                RawResponse = httpResponse, 
                Next = nextFunc
            };
            
            if((response.StatusCode == 200))
            {
                if(Utilities.IsContentTypeMatch("application/json",response.ContentType))
                {
                    response.Res = JsonConvert.DeserializeObject<PaginationLimitOffsetPageBodyRes>(await httpResponse.Content.ReadAsStringAsync(), new JsonSerializerSettings(){ NullValueHandling = NullValueHandling.Ignore, Converters = new JsonConverter[] { new FlexibleObjectDeserializer(), new EnumSerializer() }});
                }
                
                return response;
            }
            return response;
        }
        

        public async Task<PaginationLimitOffsetPageParamsResponse> PaginationLimitOffsetPageParamsAsync(long page, string? serverUrl = null)
        {
            var request = new PaginationLimitOffsetPageParamsRequest()
            {
                Page = page,
            };
            string baseUrl = PaginationLimitOffsetPageParamsSERVERS[0];
            if (!string.IsNullOrEmpty(serverUrl)) {
                baseUrl = serverUrl;
            }
            if (baseUrl.EndsWith("/"))
            {
                baseUrl = baseUrl.Substring(0, baseUrl.Length - 1);
            }
            var urlString = URLBuilder.Build(baseUrl, "/pagination/limitoffset/page", request);
            

            var httpRequest = new HttpRequestMessage(HttpMethod.Get, urlString);
            httpRequest.Headers.Add("x-speakeasy-user-agent", _userAgent);
            
            
            var client = _securityClient;
            
            var httpResponse = await client.SendAsync(httpRequest);
            
            Func<Task<PaginationLimitOffsetPageParamsResponse?>> nextFunc = async delegate() {
                var body = JObject.Parse(await httpResponse.Content.ReadAsStringAsync());

                if (request == null) 
                {
                    return null;
                }
                var page = request.Page;
                var newPage = page + 1;
                
                var firstResult = body.SelectToken("$.resultArray");
                if (firstResult == null) {
                    return null;
                };
                
                if ( firstResult.Children().Count() == 0) {
                    return null;
                };


                return await PaginationLimitOffsetPageParamsAsync(
                    page: newPage,
                    serverUrl: serverUrl
                );
            };

            var contentType = httpResponse.Content.Headers.ContentType?.MediaType;
            
            var response = new PaginationLimitOffsetPageParamsResponse
            {
                StatusCode = (int)httpResponse.StatusCode,
                ContentType = contentType,
                RawResponse = httpResponse, 
                Next = nextFunc
            };
            
            if((response.StatusCode == 200))
            {
                if(Utilities.IsContentTypeMatch("application/json",response.ContentType))
                {
                    response.Res = JsonConvert.DeserializeObject<PaginationLimitOffsetPageParamsRes>(await httpResponse.Content.ReadAsStringAsync(), new JsonSerializerSettings(){ NullValueHandling = NullValueHandling.Ignore, Converters = new JsonConverter[] { new FlexibleObjectDeserializer(), new EnumSerializer() }});
                }
                
                return response;
            }
            return response;
        }
        
    }
}