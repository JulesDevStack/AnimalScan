//
//  DescriptiveAnimalSheet.swift
//  AnimalScan
//
//  Created by Apprenant 109 on 04/06/2026.
//

import SwiftUI
import Foundation

enum Rarity: String, CaseIterable {
    case commun = "Commun"
    case rare = "Rare"
    case epic = "Epique"
    case legendary = "Legendary"
}

enum IUCNStatus: String, CaseIterable {
    case leastConcern = "Préoccupation mineure"
    case vulnerable = "Vulnérable"
    case endangered = "En danger"
    case extinct = "Éteint"
}

struct AnimalSheet : Identifiable {
    var id = UUID()
    var image : String
    var name : String
    var description : String
    var detailedDescription : String
    var discoverDate : String = "18/06/2026"
    var rarity : Rarity
    var rarityColor : Color {
        switch rarity {
            case .commun: return .green
            case .rare: return .blue
            case .epic: return .purple
            case .legendary: return .orange
        }
    }
    var habitat : String
    var scientificName : String
    var weight : Double
    var IUCNStatus : IUCNStatus
    var IUCNStatusColor : Color {
        switch IUCNStatus {
            case .leastConcern:
                return .green
            case .vulnerable:
                return .yellow
            case .endangered:
                return .orange
            case .extinct:
                return .red
        }
    }
}

var animalSheets: [AnimalSheet] = [
    
    AnimalSheet(
        image: "Dragon",
        name: "Dragon",
        description: "Le dragon est une créature légendaire présente dans les récits et les mythologies de nombreuses civilisations. Selon les traditions, il habite des montagnes isolées, des grottes profondes, des châteaux oubliés ou encore des royaumes cachés dans les nuages.",
        detailedDescription: "Son apparence varie selon les cultures, mais il est souvent décrit comme un immense reptile couvert d'écailles et doté d'une force extraordinaire. Dans les légendes occidentales, le dragon est fréquemment associé au feu, aux trésors et aux aventures héroïques. Dans les cultures asiatiques, il est davantage considéré comme un symbole de sagesse, de prospérité et de puissance spirituelle. Certaines histoires lui attribuent même le contrôle des vents, des pluies et des rivières.\n\nCréature intelligente et mystérieuse, le dragon est souvent présenté comme un gardien de connaissances anciennes ou de richesses inestimables. Son image continue d'inspirer les contes, les romans, les films et les jeux vidéo à travers le monde.",
        rarity: .legendary, habitat: "Montagnes isolées et grottes", scientificName: "Draco Mythicus", weight: 5000.0, IUCNStatus: .extinct
    ),
    
    AnimalSheet(
        image: "leopard",
        name: "Léopard",
        description: "Le léopard est un grand félin originaire d'Afrique et d'Asie, réputé pour son agilité, sa discrétion et son remarquable sens de l'adaptation. On le retrouve dans une grande variété d'habitats, allant des savanes et des forêts tropicales aux montagnes et aux zones semi-désertiques. Cette capacité à vivre dans des environnements très différents en fait l'un des félins les plus répandus au monde.",
        detailedDescription: "Animal solitaire, le léopard chasse principalement à l'aube, au crépuscule ou pendant la nuit. Son alimentation est très variée et comprend des antilopes, des singes, des oiseaux, des rongeurs et d'autres petits mammifères. Grâce à sa force impressionnante, il est capable de hisser des proies parfois plus lourdes que lui dans les arbres afin de les protéger des charognards et des autres prédateurs. Son pelage doré couvert de rosettes noires lui offre un excellent camouflage dans la végétation.\n\nExcellent grimpeur et coureur rapide sur de courtes distances, il utilise surtout la discrétion et l'effet de surprise pour capturer ses proies. Le léopard marque son territoire à l'aide d'odeurs, de griffures sur les arbres et de vocalisations destinées à éloigner les autres individus. Prédateur essentiel à l'équilibre des écosystèmes, le léopard contribue à réguler les populations d'herbivores et de petits animaux. Malgré sa grande capacité d'adaptation, il est confronté dans certaines régions à la perte de son habitat naturel et aux conflits avec les activités humaines.",
        rarity: .rare, habitat: "Savanes et forêts tropicales", scientificName: "Panthera pardus", weight: 60.0, IUCNStatus: .vulnerable
    ),
    
    AnimalSheet(
        image: "canard",
        name: "Canard",
        description: "Le canard est un oiseau aquatique que l'on rencontre dans les lacs, les étangs, les rivières et les zones humides du monde entier. Grâce à ses pattes palmées et à son plumage imperméable, il est parfaitement adapté à la vie dans l'eau. Il partage généralement son temps entre la nage, la recherche de nourriture et le repos sur les berges.",
        detailedDescription: "Très sociable, le canard vit souvent en groupe et communique avec ses congénères à l'aide de différents cris. Son régime alimentaire est varié : il se nourrit de plantes aquatiques, de graines, d'insectes, de petits crustacés et parfois de petits poissons. Certaines espèces migrent sur de longues distances afin de rejoindre des régions plus favorables pendant l'hiver.\n\nLe canard joue un rôle important dans les écosystèmes aquatiques en participant à la dispersion des graines et au contrôle de certaines populations d'insectes. Facilement reconnaissable à son bec plat et à sa démarche particulière, il est l'un des oiseaux les plus connus du grand public.",
        rarity: .commun, habitat: "Lacs et zones humides", scientificName: "Anatidae", weight: 1.5, IUCNStatus: .leastConcern
    ),
    
    AnimalSheet(
        image: "jaguar",
        name: "Jaguar",
        description: "Le jaguar est un grand félin originaire d'Amérique centrale et d'Amérique du Sud. Il vit principalement dans les forêts tropicales humides, les marécages et les régions proches des cours d'eau. Contrairement à de nombreux félins, il apprécie particulièrement l'eau et se révèle être un excellent nageur.",
        detailedDescription: "Animal solitaire, le jaguar passe une grande partie de sa vie à parcourir son territoire à la recherche de nourriture. Son alimentation comprend des cerfs, des tapirs, des capybaras, des reptiles et même des caïmans. Sa mâchoire exceptionnellement puissante lui permet de percer les carapaces et les os de ses proies, ce qui le distingue des autres grands félins. Grâce à son pelage tacheté, il se camoufle efficacement dans la végétation dense de la jungle.\n\nPrédateur au sommet de la chaîne alimentaire, il contribue à maintenir l'équilibre des populations animales dans son habitat. Cependant, la déforestation et la fragmentation de son territoire menacent aujourd'hui sa survie dans plusieurs régions.",
        rarity: .epic, habitat: "Forêts tropicales humides", scientificName: "Panthera onca", weight: 95.0, IUCNStatus: .endangered
    ),
    
    AnimalSheet(
        image: "girafe",
        name: "Girafe",
        description: "La girafe est le plus grand mammifère terrestre vivant sur la planète. Elle habite principalement les savanes et les plaines boisées d'Afrique, où elle peut facilement trouver les feuilles dont elle se nourrit. Son long cou lui permet d'atteindre les branches les plus hautes des arbres, notamment celles des acacias, qui constituent une grande partie de son alimentation.",
        detailedDescription: "Les girafes vivent généralement en groupes peu structurés dont les membres changent régulièrement. Elles passent une grande partie de leur journée à manger afin de satisfaire leurs importants besoins énergétiques. Malgré leur apparence paisible, elles peuvent se défendre efficacement grâce à leurs puissants coups de pattes.\n\nLeur pelage est composé de motifs uniques, comparables aux empreintes digitales chez les humains. Leur grande taille leur offre également un avantage pour repérer les prédateurs à distance. Les lions représentent leur principal danger naturel, en particulier pour les jeunes individus. Aujourd'hui, plusieurs populations de girafes sont surveillées afin de préserver cette espèce emblématique des paysages africains.",
        rarity: .rare, habitat: "Savanes africaines", scientificName: "Giraffa camelopardalis", weight: 1200.0, IUCNStatus: .vulnerable
    )

]

