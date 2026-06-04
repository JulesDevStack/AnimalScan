//
//  Website.swift
//  AnimalScan
//
//  Created by Jules Liegeois on 04/06/2026.
//

import SwiftUI

struct Website: Identifiable {
    var id = UUID()
    var name: String
    var url: String
}



var websites = [
    Website(name: "Ligue protectrice des oiseaux", url: "lpo.fr"),
    Website(name: "Ligue protectrice des oiseaux", url: "lpo.fr"),
    Website(name: "Ligue protectrice des oiseaux", url: "lpo.fr"),
    Website(name: "Ligue protectrice des oiseaux", url: "lpo.fr")
]
