//
//  File.swift
//  
//
//  Created by Jeremy Greenwood on 3/7/20.
//

import Foundation

public struct AuthenticatedResponse<T: Codable>: Codable {
    public let user: BaseUserResponse
    public let response: T

    public init(user: BaseUserResponse, response: T) {
        self.user = user
        self.response = response
    }
}
