
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
    /// Successful authentication.
    /// </summary>
    public class Oauth2AuthToken
    {

        [JsonProperty("authenticated")]
        public bool Authenticated { get; set; } = default!;

        [JsonProperty("token")]
        public string Token { get; set; } = default!;
    }
}