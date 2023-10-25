// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public struct HttpBinSimpleJsonObjectSlideshow {
        public let author: String
        public let date: String
        public let slides: [Shared.HttpBinSimpleJsonObjectSlideshowSlides]
        public let title: String

        /// Creates an object with the specified parameters
        ///
        ///
        public init(author: String, date: String, slides: [Shared.HttpBinSimpleJsonObjectSlideshowSlides], title: String) {
            self.author = author
            self.date = date
            self.slides = slides
            self.title = title
        }
    }
}

extension Shared.HttpBinSimpleJsonObjectSlideshow: Codable {
    enum CodingKeys: String, CodingKey {
        case author
        case date
        case slides
        case title
    }
}

