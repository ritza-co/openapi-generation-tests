
//------------------------------------------------------------------------------
// <auto-generated>
// This code was generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
//
// Changes to this file may cause incorrect behavior and will be lost when
// the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
#nullable enable
namespace SDK.Models.Operations
{
    using Newtonsoft.Json;
    using System.Collections.Generic;
    
    /// <summary>
    /// OK
    /// </summary>
    public class RequestBodyPostMultipleContentTypesSplitParamJsonRes
    {

        [JsonProperty("args")]
        public Dictionary<string, string>? Args { get; set; }

        [JsonProperty("form")]
        public Dictionary<string, object>? Form { get; set; }

        [JsonProperty("json")]
        public Dictionary<string, object>? Json { get; set; }
    }
}