// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

extension Operations.OpenIdConnectAuthNewSecurity: SecurityParameterProviding {
    func securityParameters() -> [SecurityParameter] {
        switch self {
        case .openIdConnect(let value):
            return [.openIdConnect(name: "Authorization", value: value)]
        }
    }
}
