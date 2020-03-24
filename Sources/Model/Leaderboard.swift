//
//  File.swift
//  
//
//  Created by Jeremy Greenwood on 3/12/20.
//

import Foundation

public struct Leaderboard: Codable, Equatable {
    private enum CodingKeys: String, CodingKey {
        case name
        case totalCount = "total-count-users"
        case totalDuration = "total-duration-users"
    }

    public let name: String
    public let totalCount: [LeaderboardUser]
    public let totalDuration: [LeaderboardUser]

    public init(name: String, totalCount: [LeaderboardUser], totalDuration: [LeaderboardUser]) {
        self.name = name
        self.totalCount = totalCount
        self.totalDuration = totalDuration
    }
}

public struct LeaderboardUser: Codable, Equatable {
    private enum CodingKeys: String, CodingKey {
        case id, name, avatar
        case totalWorkoutCount = "total_workout_count"
        case totalWorkoutDuration = "total-workout-duration"
    }

    public let id: String
    public let name: String
    public let avatar: URL
    public let totalWorkoutCount: Int
    public let totalWorkoutDuration: TimeInterval

    public init(id: String, name: String, avatar: URL, totalWorkoutCount: Int, totalWorkoutDuration: TimeInterval) {
        self.id = id
        self.name = name
        self.avatar = avatar
        self.totalWorkoutCount = totalWorkoutCount
        self.totalWorkoutDuration = totalWorkoutDuration
    }
}
