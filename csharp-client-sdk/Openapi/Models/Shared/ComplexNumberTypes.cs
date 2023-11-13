
//------------------------------------------------------------------------------
// <auto-generated>
// This code was generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
//
// Changes to this file may cause incorrect behavior and will be lost when
// the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
#nullable enable
namespace Openapi.Models.Shared
{
    using Newtonsoft.Json;
    using Openapi.Utils;
    using System.Numerics;
    
    public class ComplexNumberTypes
    {

        [JsonProperty("bigint")]
        public BigInteger Bigint { get; set; } = default!;

        [JsonProperty("bigintStr")]
        [JsonConverter(typeof(BigIntSerializer))]
        public BigInteger BigintStr { get; set; } = default!;

        [JsonProperty("decimal")]
        public decimal Decimal { get; set; } = default!;

        [JsonProperty("decimalStr")]
        [JsonConverter(typeof(DecimalSerializer))]
        public decimal DecimalStr { get; set; } = default!;
    }
}