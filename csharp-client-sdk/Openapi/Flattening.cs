
//------------------------------------------------------------------------------
// <auto-generated>
// This code was generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
//
// Changes to this file may cause incorrect behavior and will be lost when
// the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
#nullable enable
namespace Openapi
{
    using Newtonsoft.Json;
    using Openapi.Models.Operations;
    using Openapi.Models.Shared;
    using Openapi.Utils;
    using System.Net.Http.Headers;
    using System.Net.Http;
    using System.Threading.Tasks;
    using System;

    /// <summary>
    /// Endpoints for testing flattening through request body and parameter combinations.
    /// </summary>
    public interface IFlattening
    {
        Task<ComponentBodyAndParamConflictResponse> ComponentBodyAndParamConflictAsync(SimpleObject simpleObject, string str);
        Task<ComponentBodyAndParamNoConflictResponse> ComponentBodyAndParamNoConflictAsync(string paramStr, SimpleObject simpleObject);
        Task<ConflictingParamsResponse> ConflictingParamsAsync(string strPathParameter, string strQueryParameter);
        Task<InlineBodyAndParamConflictResponse> InlineBodyAndParamConflictAsync(InlineBodyAndParamConflictRequestBody requestBody, string str);
        Task<InlineBodyAndParamNoConflictResponse> InlineBodyAndParamNoConflictAsync(InlineBodyAndParamNoConflictRequestBody requestBody, string paramStr);
    }

    /// <summary>
    /// Endpoints for testing flattening through request body and parameter combinations.
    /// </summary>
    public class Flattening: IFlattening
    {
        public SDKConfig Config { get; private set; }
        private const string _language = "csharp";
        private const string _sdkVersion = "0.3.0";
        private const string _sdkGenVersion = "2.185.0";
        private const string _openapiDocVersion = "0.1.0";
        private const string _userAgent = "speakeasy-sdk/csharp 0.3.0 2.185.0 0.1.0 openapi";
        private string _serverUrl = "";
        private ISpeakeasyHttpClient _defaultClient;
        private ISpeakeasyHttpClient _securityClient;

        public Flattening(ISpeakeasyHttpClient defaultClient, ISpeakeasyHttpClient securityClient, string serverUrl, SDKConfig config)
        {
            _defaultClient = defaultClient;
            _securityClient = securityClient;
            _serverUrl = serverUrl;
            Config = config;
        }
        

        public async Task<ComponentBodyAndParamConflictResponse> ComponentBodyAndParamConflictAsync(SimpleObject simpleObject, string str)
        {
            var request = new ComponentBodyAndParamConflictRequest()
            {
                SimpleObject = simpleObject,
                Str = str,
            };
            string baseUrl = _serverUrl;
            if (baseUrl.EndsWith("/"))
            {
                baseUrl = baseUrl.Substring(0, baseUrl.Length - 1);
            }
            var urlString = URLBuilder.Build(baseUrl, "/anything/flattening/componentBodyAndParamConflict", request);
            

            var httpRequest = new HttpRequestMessage(HttpMethod.Post, urlString);
            httpRequest.Headers.Add("x-speakeasy-user-agent", _userAgent);
            
            var serializedBody = RequestBodySerializer.Serialize(request, "SimpleObject", "json");
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
            
            var response = new ComponentBodyAndParamConflictResponse
            {
                StatusCode = (int)httpResponse.StatusCode,
                ContentType = contentType,
                RawResponse = httpResponse
            };
            
            if((response.StatusCode == 200))
            {
                if(Utilities.IsContentTypeMatch("application/json",response.ContentType))
                {
                    response.Res = JsonConvert.DeserializeObject<ComponentBodyAndParamConflictRes>(await httpResponse.Content.ReadAsStringAsync(), new JsonSerializerSettings(){ NullValueHandling = NullValueHandling.Ignore, Converters = new JsonConverter[] { new FlexibleObjectDeserializer(), new EnumSerializer() }});
                }
                
                return response;
            }
            return response;
        }
        

        public async Task<ComponentBodyAndParamNoConflictResponse> ComponentBodyAndParamNoConflictAsync(string paramStr, SimpleObject simpleObject)
        {
            var request = new ComponentBodyAndParamNoConflictRequest()
            {
                ParamStr = paramStr,
                SimpleObject = simpleObject,
            };
            string baseUrl = _serverUrl;
            if (baseUrl.EndsWith("/"))
            {
                baseUrl = baseUrl.Substring(0, baseUrl.Length - 1);
            }
            var urlString = URLBuilder.Build(baseUrl, "/anything/flattening/componentBodyAndParamNoConflict", request);
            

            var httpRequest = new HttpRequestMessage(HttpMethod.Post, urlString);
            httpRequest.Headers.Add("x-speakeasy-user-agent", _userAgent);
            
            var serializedBody = RequestBodySerializer.Serialize(request, "SimpleObject", "json");
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
            
            var response = new ComponentBodyAndParamNoConflictResponse
            {
                StatusCode = (int)httpResponse.StatusCode,
                ContentType = contentType,
                RawResponse = httpResponse
            };
            
            if((response.StatusCode == 200))
            {
                if(Utilities.IsContentTypeMatch("application/json",response.ContentType))
                {
                    response.Res = JsonConvert.DeserializeObject<ComponentBodyAndParamNoConflictRes>(await httpResponse.Content.ReadAsStringAsync(), new JsonSerializerSettings(){ NullValueHandling = NullValueHandling.Ignore, Converters = new JsonConverter[] { new FlexibleObjectDeserializer(), new EnumSerializer() }});
                }
                
                return response;
            }
            return response;
        }
        

        public async Task<ConflictingParamsResponse> ConflictingParamsAsync(string strPathParameter, string strQueryParameter)
        {
            var request = new ConflictingParamsRequest()
            {
                StrPathParameter = strPathParameter,
                StrQueryParameter = strQueryParameter,
            };
            string baseUrl = _serverUrl;
            if (baseUrl.EndsWith("/"))
            {
                baseUrl = baseUrl.Substring(0, baseUrl.Length - 1);
            }
            var urlString = URLBuilder.Build(baseUrl, "/anything/flattening/conflictingParams/{str}", request);
            

            var httpRequest = new HttpRequestMessage(HttpMethod.Get, urlString);
            httpRequest.Headers.Add("x-speakeasy-user-agent", _userAgent);
            
            
            var client = _securityClient;
            
            var httpResponse = await client.SendAsync(httpRequest);

            var contentType = httpResponse.Content.Headers.ContentType?.MediaType;
            
            var response = new ConflictingParamsResponse
            {
                StatusCode = (int)httpResponse.StatusCode,
                ContentType = contentType,
                RawResponse = httpResponse
            };
            
            if((response.StatusCode == 200))
            {
                if(Utilities.IsContentTypeMatch("application/json",response.ContentType))
                {
                    response.Res = JsonConvert.DeserializeObject<ConflictingParamsRes>(await httpResponse.Content.ReadAsStringAsync(), new JsonSerializerSettings(){ NullValueHandling = NullValueHandling.Ignore, Converters = new JsonConverter[] { new FlexibleObjectDeserializer(), new EnumSerializer() }});
                }
                
                return response;
            }
            return response;
        }
        

        public async Task<InlineBodyAndParamConflictResponse> InlineBodyAndParamConflictAsync(InlineBodyAndParamConflictRequestBody requestBody, string str)
        {
            var request = new InlineBodyAndParamConflictRequest()
            {
                RequestBody = requestBody,
                Str = str,
            };
            string baseUrl = _serverUrl;
            if (baseUrl.EndsWith("/"))
            {
                baseUrl = baseUrl.Substring(0, baseUrl.Length - 1);
            }
            var urlString = URLBuilder.Build(baseUrl, "/anything/flattening/inlineBodyAndParamConflict", request);
            

            var httpRequest = new HttpRequestMessage(HttpMethod.Post, urlString);
            httpRequest.Headers.Add("x-speakeasy-user-agent", _userAgent);
            
            var serializedBody = RequestBodySerializer.Serialize(request, "RequestBody", "json");
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
            
            var response = new InlineBodyAndParamConflictResponse
            {
                StatusCode = (int)httpResponse.StatusCode,
                ContentType = contentType,
                RawResponse = httpResponse
            };
            
            if((response.StatusCode == 200))
            {
                if(Utilities.IsContentTypeMatch("application/json",response.ContentType))
                {
                    response.Res = JsonConvert.DeserializeObject<InlineBodyAndParamConflictRes>(await httpResponse.Content.ReadAsStringAsync(), new JsonSerializerSettings(){ NullValueHandling = NullValueHandling.Ignore, Converters = new JsonConverter[] { new FlexibleObjectDeserializer(), new EnumSerializer() }});
                }
                
                return response;
            }
            return response;
        }
        

        public async Task<InlineBodyAndParamNoConflictResponse> InlineBodyAndParamNoConflictAsync(InlineBodyAndParamNoConflictRequestBody requestBody, string paramStr)
        {
            var request = new InlineBodyAndParamNoConflictRequest()
            {
                RequestBody = requestBody,
                ParamStr = paramStr,
            };
            string baseUrl = _serverUrl;
            if (baseUrl.EndsWith("/"))
            {
                baseUrl = baseUrl.Substring(0, baseUrl.Length - 1);
            }
            var urlString = URLBuilder.Build(baseUrl, "/anything/flattening/inlineBodyAndParamNoConflict", request);
            

            var httpRequest = new HttpRequestMessage(HttpMethod.Post, urlString);
            httpRequest.Headers.Add("x-speakeasy-user-agent", _userAgent);
            
            var serializedBody = RequestBodySerializer.Serialize(request, "RequestBody", "json");
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
            
            var response = new InlineBodyAndParamNoConflictResponse
            {
                StatusCode = (int)httpResponse.StatusCode,
                ContentType = contentType,
                RawResponse = httpResponse
            };
            
            if((response.StatusCode == 200))
            {
                if(Utilities.IsContentTypeMatch("application/json",response.ContentType))
                {
                    response.Res = JsonConvert.DeserializeObject<InlineBodyAndParamNoConflictRes>(await httpResponse.Content.ReadAsStringAsync(), new JsonSerializerSettings(){ NullValueHandling = NullValueHandling.Ignore, Converters = new JsonConverter[] { new FlexibleObjectDeserializer(), new EnumSerializer() }});
                }
                
                return response;
            }
            return response;
        }
        
    }
}