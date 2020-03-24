//
//  User+Client.swift
//  
//
//  Created by Jeremy Greenwood on 3/6/20.
//

import Foundation

public struct UserCreate: Codable, Equatable {
    public var name: String
    public var email: String
    public var password: String
}

public struct BaseUserResponse: Codable, Equatable {
    public enum CodingKeys: String, CodingKey {
        case id, name, avatar, role
    }

    public let id: String
    public let name: String
    public let avatar: URL
    public let role: String

    public init(id: String, name: String, avatar: URL, role: String) {
        self.id = id
        self.name = name
        self.avatar = avatar
        self.role = role
    }
}

public struct UserResponse: Codable, Equatable {
    public enum CodingKeys: String, CodingKey {
        case id, name, avatar, role, workouts
        case totalWorkoutCount = "total-workout-count"
        case totalWorkoutDuration = "total-workout-duration"
    }

    public let id: String
    public let name: String
    public let avatar: URL
    public let role: String
    public let workouts: [WorkoutResponse]
    public let totalWorkoutCount: Int
    public let totalWorkoutDuration: TimeInterval

    public init(id: String, name: String, avatar: URL, role: String,
                workouts: [WorkoutResponse], totalWorkoutCount: Int, totalWorkoutDuration: TimeInterval) {
        self.id = id
        self.name = name
        self.avatar = avatar
        self.role = role
        self.workouts = workouts
        self.totalWorkoutCount = totalWorkoutCount
        self.totalWorkoutDuration = totalWorkoutDuration
    }
}

public struct UserLogin: Codable {
    public let email: String
    public let password: String

    public init(email: String, password: String) {
        self.email = email
        self.password = password
    }
}
