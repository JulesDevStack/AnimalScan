//
//  QuestionModel.swift
//  AnimalScan
//
//  Created by Apprenant 85 on 07/06/2026.
//

import Foundation



struct QuestionModel: Identifiable {
    var id = UUID()
    var question: String
    var questionImage: String
    var numberQuestion: Int
    var totalQuestion: Int
    var hint: String
    var choiceList: [QuestionChoice]
}

struct QuestionChoice: Identifiable {
    var id = UUID()
    var choiceText: String
    var isCorrect = false
}

var questions = [
         [
             QuestionModel(question: "Quelle est cette espèce ?", questionImage: "jaguar1",numberQuestion: 1, totalQuestion: 5, hint: "Si  l’on   regarde  attentivement  au niveau du pelage, on remarque une différence  propre à  cette  espèce.", choiceList: [QuestionChoice(choiceText: "Léopard"),
                  QuestionChoice(choiceText: "Guépard"),
                  QuestionChoice(choiceText: "Jaguar", isCorrect: true),
                  QuestionChoice(choiceText: "Couagar")]),
            
             QuestionModel(question: "Comment s'appelle ce félin ?", questionImage: "panthereneb",numberQuestion: 2,totalQuestion: 5, hint: "Cette espèce  est  la  plus  petite  des  grands  Félins,  et  son  nom  fait  référence  à  son  pelage.", choiceList: [QuestionChoice(choiceText: "Ocelot"),
                  QuestionChoice(choiceText: "Panthère Nébuleuse", isCorrect: true),
                  QuestionChoice(choiceText: "Panthère des Neiges"),
                  QuestionChoice(choiceText: "Margay")]),
             
             QuestionModel(question: "À qui a-t-on affaire ?", questionImage: "caracal",numberQuestion: 3,totalQuestion: 5, hint: "Il ressemble  à  un  Lynx,  mais celui-ci  ne  fait pas  partie  de         ce  Genre.", choiceList:
                  [QuestionChoice(choiceText: "Caracal", isCorrect: true),
                  QuestionChoice(choiceText: "Lynx du Golfe"),
                  QuestionChoice(choiceText: "Jaguarondi"),
                  QuestionChoice(choiceText: "Chat doré")]),
             
             QuestionModel(question: "À qui a-t-on affaire ?", questionImage: "caracal",numberQuestion: 4,totalQuestion: 5, hint: "Il ressemble  à  un  Lynx,  mais celui-ci  ne  fait pas  partie  de         ce  Genre.", choiceList:
                  [QuestionChoice(choiceText: "Caracal", isCorrect: true),
                  QuestionChoice(choiceText: "Lynx du Golfe"),
                  QuestionChoice(choiceText: "Jaguarondi"),
                  QuestionChoice(choiceText: "Chat doré")]),
             
             QuestionModel(question: "À qui a-t-on affaire ?", questionImage: "caracal",numberQuestion: 5,totalQuestion: 5, hint: "Il ressemble  à  un  Lynx,  mais celui-ci  ne  fait pas  partie  de         ce  Genre.", choiceList:
                  [QuestionChoice(choiceText: "Caracal", isCorrect: true),
                  QuestionChoice(choiceText: "Lynx du Golfe"),
                  QuestionChoice(choiceText: "Jaguarondi"),
                  QuestionChoice(choiceText: "Chat doré")]),
         ]
     ]
 
