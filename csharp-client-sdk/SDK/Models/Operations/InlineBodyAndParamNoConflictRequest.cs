
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
    using SDK.Utils;
    
    public class InlineBodyAndParamNoConflictRequest
    {

        [SpeakeasyMetadata("request:mediaType=application/json")]
        public InlineBodyAndParamNoConflictRequestBody RequestBody { get; set; } = default!;

        [SpeakeasyMetadata("queryParam:style=form,explode=true,name=paramStr")]
        public string ParamStr { get; set; } = default!;
    }
}