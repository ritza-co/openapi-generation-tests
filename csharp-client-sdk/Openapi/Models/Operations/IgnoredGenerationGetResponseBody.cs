
//------------------------------------------------------------------------------
// <auto-generated>
// This code was generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
//
// Changes to this file may cause incorrect behavior and will be lost when
// the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
#nullable enable
namespace Openapi.Models.Operations
{
    using Newtonsoft.Json;
    using Openapi.Models.Shared;
    
    /// <summary>
    /// A successful response that contains the simpleObject sent in the request body
    /// </summary>
    public class IgnoredGenerationGetResponseBody
    {

        /// <summary>
        /// A simple object that uses all our supported primitive types and enums and has optional properties.
        /// 
        /// <see>https://docs.speakeasyapi.dev} - A link to the external docs.</see>
        /// </summary>
        [JsonProperty("json")]
        public SimpleObject? Json { get; set; }
    }
}