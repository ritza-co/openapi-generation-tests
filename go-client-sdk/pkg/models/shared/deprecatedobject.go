// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

// DeprecatedObject
//
// Deprecated type: This object is deprecated.
type DeprecatedObject struct {
	Str *string `json:"str,omitempty"`
}

func (o *DeprecatedObject) GetStr() *string {
	if o == nil {
		return nil
	}
	return o.Str
}
