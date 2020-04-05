//
//  File.swift
//  
//
//  Created by Jeremy Greenwood on 3/7/20.
//

import Foundation

public struct ChallengeCreate: Codable, Equatable {
    private enum CodingKeys: String, CodingKey {
        case name
        case startDate = "start-date"
        case endDate = "end-date"
    }

    public let name: String
    public let startDate: String
    public let endDate: String

    public init(name: String, startDate: String, endDate: String) {
        self.name = name
        self.startDate = startDate
        self.endDate = endDate
    }
}

public struct ChallengeResponse: Codable, Equatable {
    private enum CodingKeys: String, CodingKey {
        case id, name, users
        case startDate = "start-date"
        case endDate = "end-date"
    }

    public let id: String
    public let name: String
    public let startDate: String
    public let endDate: String
    public let users: [BaseUserResponse]

    public init(id: String, name: String, startDate: String, endDate: String, users: [BaseUserResponse]) {
        self.id = id
        self.name = name
        self.startDate = startDate
        self.endDate = endDate
        self.users = users
    }
}
