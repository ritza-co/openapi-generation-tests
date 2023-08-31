// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type WriteOnlyObject struct {
	Bool   bool    `json:"bool"`
	Num    float64 `json:"num"`
	String string  `json:"string"`
}

func (o *WriteOnlyObject) GetBool() bool {
	if o == nil {
		return false
	}
	return o.Bool
}

func (o *WriteOnlyObject) GetNum() float64 {
	if o == nil {
		return 0.0
	}
	return o.Num
}

func (o *WriteOnlyObject) GetString() string {
	if o == nil {
		return ""
	}
	return o.String
}

// WriteOnlyObjectOutput - OK
type WriteOnlyObjectOutput struct {
}
