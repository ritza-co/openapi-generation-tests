
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
    using System;
    
    /// <summary>
    /// A successful response that contains a deprecatedObject sent in the request body
    /// </summary>
    public class DeprecatedObjectInSchemaGetResponseBody
    {

        [Obsolete("This field will be removed in a future release, please migrate away from it as soon as possible")]
        [JsonProperty("json")]
        public DeprecatedObject? Json { get; set; }
    }
}