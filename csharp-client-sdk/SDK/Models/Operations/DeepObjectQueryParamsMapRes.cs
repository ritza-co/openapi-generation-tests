
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
    public class DeepObjectQueryParamsMapRes
    {

        [JsonProperty("args")]
        public Dictionary<string, object> Args { get; set; } = default!;

        [JsonProperty("url")]
        public string Url { get; set; } = default!;
    }
}