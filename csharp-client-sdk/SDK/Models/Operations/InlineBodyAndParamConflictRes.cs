
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
    public class InlineBodyAndParamConflictRes
    {

        [JsonProperty("args")]
        public Dictionary<string, string> Args { get; set; } = default!;

        [JsonProperty("json")]
        public InlineBodyAndParamConflictResJson Json { get; set; } = default!;
    }
}