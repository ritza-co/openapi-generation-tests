// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

extension Operations.MultipleSimpleOptionsAuthSecurity: SecurityParameterProviding {
    func securityParameters() -> [SecurityParameter] {
        switch self {
        case .apiKeyAuthNew(let value):
            return [.apiKey(name: "x-api-key", value: value)]
        case .oauth2(let value):
            return [.oauth2(name: "Authorization", value: value)]
        }
    }
}
