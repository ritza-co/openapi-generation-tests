// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type Slides struct {
	Items []string `json:"items,omitempty"`
	Title string   `json:"title"`
	Type  string   `json:"type"`
}

func (o *Slides) GetItems() []string {
	if o == nil {
		return nil
	}
	return o.Items
}

func (o *Slides) GetTitle() string {
	if o == nil {
		return ""
	}
	return o.Title
}

func (o *Slides) GetType() string {
	if o == nil {
		return ""
	}
	return o.Type
}

type Slideshow struct {
	Author string   `json:"author"`
	Date   string   `json:"date"`
	Slides []Slides `json:"slides"`
	Title  string   `json:"title"`
}

func (o *Slideshow) GetAuthor() string {
	if o == nil {
		return ""
	}
	return o.Author
}

func (o *Slideshow) GetDate() string {
	if o == nil {
		return ""
	}
	return o.Date
}

func (o *Slideshow) GetSlides() []Slides {
	if o == nil {
		return []Slides{}
	}
	return o.Slides
}

func (o *Slideshow) GetTitle() string {
	if o == nil {
		return ""
	}
	return o.Title
}

type HTTPBinSimpleJSONObject struct {
	Slideshow Slideshow `json:"slideshow"`
}

func (o *HTTPBinSimpleJSONObject) GetSlideshow() Slideshow {
	if o == nil {
		return Slideshow{}
	}
	return o.Slideshow
}
