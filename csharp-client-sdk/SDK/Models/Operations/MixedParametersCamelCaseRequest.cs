
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
    
    public class MixedParametersCamelCaseRequest
    {

        [SpeakeasyMetadata("header:style=simple,explode=false,name=header_param")]
        public string HeaderParam { get; set; } = default!;

        [SpeakeasyMetadata("pathParam:style=simple,explode=false,name=path_param")]
        public string PathParam { get; set; } = default!;

        [SpeakeasyMetadata("queryParam:style=form,explode=true,name=query_string_param")]
        public string QueryStringParam { get; set; } = default!;
    }
}