// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public struct HttpBinSimpleJsonObject {
        public let slideshow: Shared.HttpBinSimpleJsonObjectSlideshow

        /// Creates an object with the specified parameters
        ///
        ///
        public init(slideshow: Shared.HttpBinSimpleJsonObjectSlideshow) {
            self.slideshow = slideshow
        }
    }
}

extension Shared.HttpBinSimpleJsonObject: Codable {
    enum CodingKeys: String, CodingKey {
        case slideshow
    }
}

