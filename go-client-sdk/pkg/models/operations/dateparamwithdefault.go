// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
	"openapi/v2/pkg/types"
	"openapi/v2/pkg/utils"
)

type DateParamWithDefaultRequest struct {
	// A date parameter with a default value
	DateInput types.Date `default:"2023-10-13" queryParam:"style=form,explode=true,name=dateInput"`
}

func (d DateParamWithDefaultRequest) MarshalJSON() ([]byte, error) {
	return utils.MarshalJSON(d, "", false)
}

func (d *DateParamWithDefaultRequest) UnmarshalJSON(data []byte) error {
	if err := utils.UnmarshalJSON(data, &d, "", false, false); err != nil {
		return err
	}
	return nil
}

func (o *DateParamWithDefaultRequest) GetDateInput() types.Date {
	if o == nil {
		return types.Date{}
	}
	return o.DateInput
}

type DateParamWithDefaultResponse struct {
	// HTTP response content type for this operation
	ContentType string
	// HTTP response status code for this operation
	StatusCode int
	// Raw HTTP response; suitable for custom response parsing
	RawResponse *http.Response
}

func (o *DateParamWithDefaultResponse) GetContentType() string {
	if o == nil {
		return ""
	}
	return o.ContentType
}

func (o *DateParamWithDefaultResponse) GetStatusCode() int {
	if o == nil {
		return 0
	}
	return o.StatusCode
}

func (o *DateParamWithDefaultResponse) GetRawResponse() *http.Response {
	if o == nil {
		return nil
	}
	return o.RawResponse
}
