//
//  Website.swift
//  AnimalScan
//
//  Created by Jules Liegeois on 04/06/2026.
//

import SwiftUI

struct User: Identifiable {
    var id = UUID()
    var username: String
    var score: Int
    var weeklyScore: Int
    var avatar: String
}

var users = [
    User(username: "Yann", score: 3200, weeklyScore: 4000, avatar: "avatar"),
    User(username: "José", score: 3100, weeklyScore: 3000, avatar: "avatar"),
    User(username: "Yamine", score: 3000, weeklyScore: 5000, avatar: "avatar"),
    User(username: "Charlotte", score: 2900, weeklyScore: 4000, avatar: "avatar"),
    User(username: "Jules", score: 2900, weeklyScore: 4000, avatar: "avatar"),
    User(username: "John Doe", score: 2900, weeklyScore: 4000, avatar: "avatar"),
    User(username: "Charlotte", score: 2900, weeklyScore: 4000, avatar: "avatar"),
    User(username: "Jules", score: 2900, weeklyScore: 4000, avatar: "avatar"),
    User(username: "John Doe", score: 2900, weeklyScore: 4000, avatar: "avatar"),
    User(username: "Yann", score: 3200, weeklyScore: 4000, avatar: "avatar"),
    User(username: "José", score: 3100, weeklyScore: 4000, avatar: "avatar"),
    User(username: "Yamine", score: 3000, weeklyScore: 4000, avatar: "avatar")
]
