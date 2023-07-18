// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

import (
	"time"
)

// ExampleResource - OK
type ExampleResource struct {
	CreatedAt *time.Time `json:"createdAt,omitempty"`
	ID        *string    `json:"id,omitempty"`
	Name      *string    `json:"name,omitempty"`
	UpdatedAt *time.Time `json:"updatedAt,omitempty"`
}

func (o *ExampleResource) GetCreatedAt() *time.Time {
	if o == nil {
		return nil
	}
	return o.CreatedAt
}

func (o *ExampleResource) GetID() *string {
	if o == nil {
		return nil
	}
	return o.ID
}

func (o *ExampleResource) GetName() *string {
	if o == nil {
		return nil
	}
	return o.Name
}

func (o *ExampleResource) GetUpdatedAt() *time.Time {
	if o == nil {
		return nil
	}
	return o.UpdatedAt
}
