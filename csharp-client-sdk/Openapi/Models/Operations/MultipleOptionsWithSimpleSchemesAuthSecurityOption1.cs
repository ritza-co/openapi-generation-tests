
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
    using Openapi.Utils;
    
    public class MultipleOptionsWithSimpleSchemesAuthSecurityOption1
    {

        [SpeakeasyMetadata("security:scheme=true,type=apiKey,subType=header,name=x-api-key")]
        public string ApiKeyAuthNew { get; set; } = default!;

        [SpeakeasyMetadata("security:scheme=true,type=oauth2,name=Authorization")]
        public string Oauth2 { get; set; } = default!;
    }
}