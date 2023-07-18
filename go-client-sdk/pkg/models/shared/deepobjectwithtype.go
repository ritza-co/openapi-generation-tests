// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type DeepObjectWithType struct {
	Any  interface{}             `json:"any"`
	Arr  []SimpleObject          `json:"arr"`
	Bool bool                    `json:"bool"`
	Int  int64                   `json:"int"`
	Map  map[string]SimpleObject `json:"map"`
	Num  float64                 `json:"num"`
	// A simple object that uses all our supported primitive types and enums and has optional properties.
	Obj  SimpleObject `json:"obj"`
	Str  string       `json:"str"`
	Type *string      `json:"type,omitempty"`
}

func (o *DeepObjectWithType) GetAny() interface{} {
	if o == nil {
		return nil
	}
	return o.Any
}

func (o *DeepObjectWithType) GetArr() []SimpleObject {
	if o == nil {
		return []SimpleObject{}
	}
	return o.Arr
}

func (o *DeepObjectWithType) GetBool() bool {
	if o == nil {
		return false
	}
	return o.Bool
}

func (o *DeepObjectWithType) GetInt() int64 {
	if o == nil {
		return 0
	}
	return o.Int
}

func (o *DeepObjectWithType) GetMap() map[string]SimpleObject {
	if o == nil {
		return map[string]SimpleObject{}
	}
	return o.Map
}

func (o *DeepObjectWithType) GetNum() float64 {
	if o == nil {
		return 0.0
	}
	return o.Num
}

func (o *DeepObjectWithType) GetObj() SimpleObject {
	if o == nil {
		return SimpleObject{}
	}
	return o.Obj
}

func (o *DeepObjectWithType) GetStr() string {
	if o == nil {
		return ""
	}
	return o.Str
}

func (o *DeepObjectWithType) GetType() *string {
	if o == nil {
		return nil
	}
	return o.Type
}
