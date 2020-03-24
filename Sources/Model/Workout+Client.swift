//
//  Workout+Client.swift
//  
//
//  Created by Jeremy Greenwood on 3/7/20.
//

import Foundation

public struct WorkoutCreate: Codable {
    private enum CodingKeys: String, CodingKey {
        case duration, type
    }

    public let duration: TimeInterval
    public let type: String

    public init(duration: TimeInterval, type: String) {
        self.duration = duration
        self.type = type
    }
}

public struct WorkoutResponse: Codable, Equatable {
    private enum CodingKeys: String, CodingKey {
        case id, duration, type, user
    }

    public let id: String
    public let duration: TimeInterval
    public let type: String
    public let user: BaseUserResponse

    public init(id: String, duration: TimeInterval, type: String, user: BaseUserResponse) {
        self.id = id
        self.duration = duration
        self.type = type
        self.user = user
    }
}
