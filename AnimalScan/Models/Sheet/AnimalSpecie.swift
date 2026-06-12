import SwiftUI
import Foundation

struct AnimalSpecie : Identifiable {
    var id = UUID()
    var image : String
    var name : String
    
    var animalssheets : [AnimalSheet]
}

var animalSpecies: [AnimalSpecie] = [
    AnimalSpecie(image: "Canids_1", name: "Canidés", animalssheets: animalSheets),
    AnimalSpecie(image: "Felines_2", name: "Félins", animalssheets: animalSheets),
    AnimalSpecie(image: "Birds of prey_3", name: "Rapaces", animalssheets: animalSheets),
    AnimalSpecie(image: "Cetaceans_4", name: "Cétacés", animalssheets: animalSheets),
    AnimalSpecie(image: "Fowl_5", name: "Volatiles", animalssheets: animalSheets),
    AnimalSpecie(image: "Ursids_6", name: "Ursidés", animalssheets: animalSheets),
    AnimalSpecie(image: "Equids_7", name: "Équidés", animalssheets: animalSheets),
    AnimalSpecie(image: "Elephantids_8", name: "Éléphantidés", animalssheets: animalSheets),
    AnimalSpecie(image: "Giraffids_9", name: "Giraffidés", animalssheets: animalSheets),
    AnimalSpecie(image: "Macropodids_10", name: "Macropodidés", animalssheets: animalSheets),
]

