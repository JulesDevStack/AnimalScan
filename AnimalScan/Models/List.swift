//
//  Liste.swift
//  AnimalScan
//
//  Created by Apprenant 85 on 04/06/2026.
//

import Foundation
import SwiftUI

struct List: Identifiable{
    var id = UUID()
    var image: String
    var name: String
    var saving: String
    var symbol: String
    var level: String
    var coloricon: Color
}
var lists = [
    List(image: "quizz4", name: "Passereaux du jardin", saving: "bookmark", symbol: "tortoise.fill", level: "MOYEN", coloricon: Color.cyan),
    List(image: "quizz5", name: "Animaux en R    ", saving: "bookmark", symbol: "hare.fill", level: "DIFFICILE", coloricon: Color.indigo),
    List(image: "quizz6", name: "Espèces de la forêt", saving: "bookmark", symbol: "tortoise.fill", level: "MOYEN", coloricon: Color.teal),
    List(image: "", name: "", saving: "bookmark", symbol: "", level: "", coloricon: Color.red),
    
]
