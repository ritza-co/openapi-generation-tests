
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
    using SDK.Models.Shared;
    using SDK.Utils;
    
    public class FormQueryParamsRefParamObjectRequest
    {

        [SpeakeasyMetadata("queryParam:style=form,explode=false,name=refObjParam")]
        public RefQueryParamObj? RefObjParam { get; set; }

        [SpeakeasyMetadata("queryParam:style=form,explode=true,name=refObjParamExploded")]
        public RefQueryParamObjExploded? RefObjParamExploded { get; set; }
    }
}