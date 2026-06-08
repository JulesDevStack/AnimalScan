import SwiftUI
import Foundation

struct AnimalSpecie : Identifiable {
    var id = UUID()
    var image : String
    var name : String
    
    var animalssheets : [AnimalSheet]
}

var animalSpecies: [AnimalSpecie] = [
    
    AnimalSpecie(image: "dragon", name: "Mamif", animalssheets: animalSheets),
    AnimalSpecie(image: "girafe", name: "felin", animalssheets: animalSheets),
    AnimalSpecie(image: "leopard", name: "Mamif", animalssheets: animalSheets),
    AnimalSpecie(image: "dragon", name: "volatiles", animalssheets: animalSheets),



]
