// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

extension Operations.MultipleMixedSchemeAuthSecurity: SecurityParameterProviding {
    func securityParameters() -> [SecurityParameter] {
        return [
            .httpBasic(username: basicAuth.username, password: basicAuth.password),
            .apiKey(name: "x-api-key", value: apiKeyAuthNew)
        ]
    }
}
