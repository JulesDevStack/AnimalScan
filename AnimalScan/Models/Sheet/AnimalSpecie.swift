import SwiftUI
import Foundation

struct AnimalSpecie : Identifiable {
    var id = UUID()
    var image : String
    var name : String
    
    var animalssheets : [AnimalSheet]
}

var animalSpecies: [AnimalSpecie] = [
    AnimalSpecie(image: "Chevreuil", name: "Canidés", animalssheets: animalSheets),
    AnimalSpecie(image: "Chouette", name: "Félins", animalssheets: animalSheets),
    AnimalSpecie(image: "Dragon", name: "Rapaces", animalssheets: animalSheets),
    AnimalSpecie(image: "Chevreuil", name: "Cétacés", animalssheets: animalSheets),
    AnimalSpecie(image: "Chouette", name: "Félin", animalssheets: animalSheets),
    AnimalSpecie(image: "Dragon", name: "Mamif", animalssheets: animalSheets),
    AnimalSpecie(image: "jaguar", name: "volatiles", animalssheets: animalSheets),
    AnimalSpecie(image: "jaguar", name: "Cétacés", animalssheets: animalSheets),
    AnimalSpecie(image: "Chevreuil", name: "Ursidés", animalssheets: animalSheets),
    AnimalSpecie(image: "Chouette", name: "Équidés", animalssheets: animalSheets),
    AnimalSpecie(image: "Dragon", name: "Strigidés", animalssheets: animalSheets),
    AnimalSpecie(image: "jaguar", name: "Canidés", animalssheets: animalSheets),
    AnimalSpecie(image: "Chevreuil", name: "Félins", animalssheets: animalSheets),
    AnimalSpecie(image: "Chouette", name: "Cétacés", animalssheets: animalSheets),
    AnimalSpecie(image: "Dragon", name: "Rapaces", animalssheets: animalSheets),
    AnimalSpecie(image: "jaguar", name: "Éléphantidés", animalssheets: animalSheets),
    AnimalSpecie(image: "Chevreuil", name: "Giraffidés", animalssheets: animalSheets),
    AnimalSpecie(image: "Chouette", name: "Hominidés", animalssheets: animalSheets),
    AnimalSpecie(image: "Dragon", name: "Macropodidés", animalssheets: animalSheets)
]
