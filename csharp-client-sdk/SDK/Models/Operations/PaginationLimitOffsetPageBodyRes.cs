
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
    public class PaginationLimitOffsetPageBodyRes
    {

        [JsonProperty("numPages")]
        public long NumPages { get; set; } = default!;

        [JsonProperty("resultArray")]
        public List<long> ResultArray { get; set; } = default!;
    }
}