
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
    
    public class RequestBodyPutMultipartSimpleForm
    {

        [JsonProperty("any")]
        public string Any { get; set; } = default!;

        [JsonProperty("bool")]
        public string Bool { get; set; } = default!;

        [JsonProperty("boolOpt")]
        public string? BoolOpt { get; set; }

        [JsonProperty("date")]
        public string Date { get; set; } = default!;

        [JsonProperty("dateTime")]
        public string DateTime { get; set; } = default!;

        [JsonProperty("enum")]
        public string Enum { get; set; } = default!;

        [JsonProperty("float32")]
        public string Float32 { get; set; } = default!;

        [JsonProperty("int")]
        public string Int { get; set; } = default!;

        [JsonProperty("int32")]
        public string Int32 { get; set; } = default!;

        [JsonProperty("intOptNull")]
        public string? IntOptNull { get; set; }

        [JsonProperty("num")]
        public string Num { get; set; } = default!;

        [JsonProperty("numOptNull")]
        public string? NumOptNull { get; set; }

        [JsonProperty("str")]
        public string Str { get; set; } = default!;

        [JsonProperty("strOpt")]
        public string? StrOpt { get; set; }
    }
}