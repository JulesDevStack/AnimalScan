//
//  Quizz.swift
//  AnimalScan
//
//  Created by Apprenant 85 on 04/06/2026.
//

import Foundation
import SwiftUI

struct Quizz: Identifiable{
    var id = UUID()
    var image: String
    var name: String
    var saving: String
    var symbol: String
    var level: String
    var coloricon: Color
}
var quizzs = [
    Quizz(image: "quizz1", name: "Reconnaître les Félins", saving: "bookmark", symbol: "leaf.fill", level: "FACILE", coloricon: Color.mint),
    Quizz(image: "quizz2", name: "Familles d'Arthropode", saving: "bookmark", symbol: "tortoise.fill", level: "MOYEN", coloricon: Color.cyan),
    Quizz(image: "quizz3", name: "À qui sont ces yeux ?", saving: "bookmark", symbol: "hare.fill", level: "DIFFICILE", coloricon: Color.indigo),
    Quizz(image: "", name: "", saving: "bookmark", symbol: "", level: "", coloricon: Color.red),
    Quizz(image: "quizz4", name: "Passereaux du jardin", saving: "bookmark", symbol: "tortoise.fill", level: "MOYEN", coloricon: Color.cyan),
    Quizz(image: "quizz5", name: "Animaux en R    ", saving: "bookmark", symbol: "hare.fill", level: "DIFFICILE", coloricon: Color.indigo),
    Quizz(image: "quizz6", name: "Espèces de la forêt", saving: "bookmark", symbol: "tortoise.fill", level: "MOYEN", coloricon: Color.teal),
    Quizz(image: "", name: "", saving: "bookmark", symbol: "", level: "", coloricon: Color.red),
    
]
