
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
    
    /// <summary>
    /// OK
    /// </summary>
    public class JsonQueryParamsObjectRes
    {

        [JsonProperty("args")]
        public JsonQueryParamsObjectArgs Args { get; set; } = default!;

        [JsonProperty("url")]
        public string Url { get; set; } = default!;
    }
}