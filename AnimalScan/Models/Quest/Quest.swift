//
//  Website.swift
//  AnimalScan
//
//  Created by Jules Liegeois on 04/06/2026.
//

import SwiftUI

enum QuestType: CaseIterable {
    case daily
    case monthly
}

struct Quest: Identifiable {
    var id = UUID()
    var target: String
    var reward: Int
    var type: QuestType
    var progress: Int
    var objective: Int
    var done: Bool {
        withAnimation {
            progress == objective
        }
    }
}

var quests = [
    Quest(target: "Scanner 3 mammifères", reward: 200, type: .daily, progress: 3, objective: 3),
    Quest(target: "Compléter 1 quiz", reward: 200, type: .daily, progress: 0, objective: 1),
    Quest(target: "Lire 2 articles de blog", reward: 200, type: .daily, progress: 1, objective: 2),
    Quest(target: "Scanner un oiseau", reward: 200, type: .daily, progress: 0, objective: 1),
    
    Quest(target: "Scanner 50 animaux", reward: 3500, type: .monthly, progress: 15, objective: 50),
    Quest(target: "Trouver 5 oiseaux rares", reward: 3500, type: .monthly, progress: 2, objective: 5),
    Quest(target: "Réussir 10 quiz parfaits", reward: 3500, type: .monthly, progress: 4, objective: 10),
    Quest(target: "Scanner 5 reptiles différents", reward: 3500, type: .monthly, progress: 1, objective: 5)
]
