
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
    using System.Numerics;
    
    /// <summary>
    /// OK
    /// </summary>
    public class RequestBodyPostJsonDataTypesBigIntResponseBody
    {

        [JsonProperty("data")]
        public string Data { get; set; } = default!;

        [JsonProperty("json")]
        public BigInteger Json { get; set; } = default!;
    }
}