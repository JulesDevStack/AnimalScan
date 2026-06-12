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
    var image2: String
    var name: String
    var saving: String
    var symbol: String
    var level: String
    var coloricon: Color
    var description: String
    var question: Int
    var reward: String
}
var quizzs = [
    Quizz(image: "quizz1",
          image2: "lynx",
          name: "Reconnaître les Félins",
          saving: "bookmark",
          symbol: "tortoise.fill",
          level: "MOYEN",
          coloricon: Color.cyan,
          description: "Testez vos connaissances sur les plus grands Félidés  du monde,  avec  une image et  quatre réponses.",
          question: 5,
          reward: "1 CARTE RARE"),
    
    Quizz(image: "quizz2",
          image2: "abeille",
          name: "Familles d'Arthropode",
          saving: "bookmark",
          symbol: "tortoise.fill",
          level: "MOYEN",
          coloricon: Color.cyan,
          description: "Connaissez-vous réellement les différentes familles d'Arthropode ? Testez votre culture avec  une image et  quatre réponses.",
          question: 15,
          reward: "1 CARTE COMMUNE"),
    
    Quizz(image: "quizz3",
          image2: "cameleoneye",
          name: "À qui sont ces yeux ?",
          saving: "bookmark",
          symbol: "leaf.fill",
          level: "FACILE",
          coloricon: Color.mint,
          description: "Saurez-vous reconnaître les différents regards qui peuplent notre planète ?",
          question: 10,
          reward: "+ 500 pts"),
    
    Quizz(image: "quizz4",
          image2: "orite",
          name: "Passereaux du jardin",
          saving: "bookmark",
          symbol: "leaf.fill",
          level: "FACILE",
          coloricon: Color.mint,
          description: "",
          question: 10,
          reward:"+ 300 pts"),
    
    Quizz(image: "quizz5",
          image2: "" ,
          name: "Requins communs",
          saving: "bookmark",
          symbol: "hare.fill",
          level: "DIFFICILE",
          coloricon: Color.indigo,
          description: "" ,
          question: 20 ,
          reward: "1 CARTE RARE"),
    
    Quizz(image: "quizz6",
          image2: "",
          name: "Espèces de la forêt",
          saving: "bookmark",
          symbol: "tortoise.fill",
          level: "MOYEN",
          coloricon: Color.teal,
          description:"" ,
          question: 15 ,
          reward: "1 CARTE RARE"),

    Quizz(image: "quizz1",
          image2: "lynx",
          name: "Reconnaître les Félins",
          saving: "bookmark",
          symbol: "tortoise.fill",
          level: "MOYEN",
          coloricon: Color.cyan,
          description: "Testez vos connaissances sur les plus grands Félidés  du monde,  avec  une image et  quatre réponses.",
          question: 5,
          reward: "1 CARTE RARE"),
    
    Quizz(image: "quizz2",
          image2: "abeille",
          name: "Familles d'Arthropode",
          saving: "bookmark",
          symbol: "tortoise.fill",
          level: "MOYEN",
          coloricon: Color.cyan,
          description: "Connaissez-vous réellement les différentes familles d'Arthropode ? Testez votre culture avec  une image et  quatre réponses.",
          question: 15,
          reward: "1 CARTE COMMUNE"),
    
    Quizz(image: "quizz3",
          image2: "cameleoneye",
          name: "À qui sont ces yeux ?",
          saving: "bookmark",
          symbol: "leaf.fill",
          level: "FACILE",
          coloricon: Color.mint,
          description: "Saurez-vous reconnaître les différents regards qui peuplent notre planète ?",
          question: 10,
          reward: "+ 500 pts"),
]
