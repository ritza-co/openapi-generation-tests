
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
    
    public class ResponseBodyEmptyWithHeadersRequest
    {

        [SpeakeasyMetadata("queryParam:style=form,explode=true,name=X-Number-Header")]
        public double XNumberHeader { get; set; } = default!;

        [SpeakeasyMetadata("queryParam:style=form,explode=true,name=X-String-Header")]
        public string XStringHeader { get; set; } = default!;
    }
}