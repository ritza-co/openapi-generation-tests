
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
    
    public class HeaderParamsPrimitiveResHeaders
    {

        [JsonProperty("X-Header-Boolean")]
        public string XHeaderBoolean { get; set; } = default!;

        [JsonProperty("X-Header-Integer")]
        public string XHeaderInteger { get; set; } = default!;

        [JsonProperty("X-Header-Number")]
        public string XHeaderNumber { get; set; } = default!;

        [JsonProperty("X-Header-String")]
        public string XHeaderString { get; set; } = default!;
    }
}