
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
    using SDK.Utils;
    using System.Numerics;
    
    /// <summary>
    /// OK
    /// </summary>
    public class RequestBodyPostJSONDataTypesBigIntStr200ApplicationJSON
    {

        [JsonProperty("data")]
        public string Data { get; set; } = default!;

        [JsonProperty("json")]
        [JsonConverter(typeof(BigIntSerializer))]
        public BigInteger Json { get; set; } = default!;
    }
}