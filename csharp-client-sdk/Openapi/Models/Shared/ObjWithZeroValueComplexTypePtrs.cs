
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
    using NodaTime;
    using Openapi.Utils;
    using System.Numerics;
    using System;
    
    public class ObjWithZeroValueComplexTypePtrs
    {

        [JsonProperty("bigint")]
        public BigInteger? Bigint { get; set; }

        [JsonProperty("bigintStr")]
        [JsonConverter(typeof(BigIntSerializer))]
        public BigInteger? BigintStr { get; set; }

        /// <summary>
        /// A date property.
        /// </summary>
        [JsonProperty("date")]
        public LocalDate? Date { get; set; }

        /// <summary>
        /// A date-time property.
        /// </summary>
        [JsonProperty("dateTime")]
        public DateTime? DateTime { get; set; }

        [JsonProperty("decimal")]
        public decimal? Decimal { get; set; }
    }
}