////
////  QuestionEngine.swift
////  AnimalScan
////
////  Created by Apprenant 85 on 07/06/2026.
////
//
//import Foundation
//import SwiftUI
//import Combine
//
//class QuestionEngine: ObservableObject {
//    
//    static var currentQuestion = 0
//    @Published var model = QuestionEngine.createQuestionEngine(i: QuestionEngine.currentQuestion)
//    static var numberCorrect = 0
//    
//    static func createQuestionEngine(i: Int) -> Question {
//        
//        return Question(currentQuestionIndex: i, questionModel: QuestionData[i])
//    }
//    
//    var timer = Timer()
//    @Published var score = 15
//    var totalScore = 0
//    
//    func startTimer() {
//        self.score = 15
//        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { time in
//            if self.score > 0 {
//                self.score -= 1
//                print (self.score)
//            }else {
//                print ("Timer done")
//                self.timer.invalidate()
//            }
//            
//        })
//    }
//    
//    func currentQuestion() -> Int {
//        return QuestionEngine.currentQuestion + 1
//    }
//    
//    func gotCorrect() {
////        self.timer.invalidate()
//        QuestionEngine.numberCorrect += 1
//        print (QuestionEngine.numberCorrect)
//        totalScore = totalScore + self.score
//        print (totalScore)
//    }
//    
//    
//    func manyCorrect() -> Int {
//        return QuestionEngine.numberCorrect
//    }
//    
//    
//    func nextQuestion(){
//        
//        QuestionEngine.currentQuestion += 1
//        
//        if QuestionEngine.currentQuestion<QuestionEngine.QuestionData.count{
//            self.model = QuestionEngine.createQuestionEngine(i: QuestionEngine.currentQuestion)
//        } else {
//         self.timer.invalidate()
//        }
//    }
//    
//   
//    
//    func totalQuestion() -> Int {
//        
//        return QuestionEngine.QuestionData.count
//    }
//    
//    
//    func allDone() -> Bool {
//        return currentQuestion () == totalQuestion()
//    }
//    
//    
//    func invalidateTimer() {
//        self.timer.invalidate()
//    }
//    
//}
//
//
//extension QuestionEngine {
//    
//   static var QuestionData: [QuestionModel] {
//        [
//            QuestionModel(question: "Quelle est cette espèce ?", questionImage: "jaguar1",numberQuestion: 1, totalQuestion: 5, hint: "Si  l’on   regarde  attentivement  au niveau du pelage, on remarque une différence  propre à  cette  espèce.", choiceList: [QuestionChoice(choiceText: "Léopard"),
//                 QuestionChoice(choiceText: "Guépard"),
//                 QuestionChoice(choiceText: "Jaguar", isCorrect: true),
//                 QuestionChoice(choiceText: "Couagar")]),
//           
//            QuestionModel(question: "Comment s'appelle ce félin ?", questionImage: "panthereneb",numberQuestion: 2,totalQuestion: 5, hint: "Cette espèce  est  la  plus  petite  des  grands  Félins,  et  son  nom  fait  référence  à  son  pelage.", choiceList: [QuestionChoice(choiceText: "Ocelot"),
//                 QuestionChoice(choiceText: "Panthère Nébuleuse", isCorrect: true),
//                 QuestionChoice(choiceText: "Panthère des Neiges"),
//                 QuestionChoice(choiceText: "Margay")]),
//            
//            QuestionModel(question: "À qui a-t-on affaire ?", questionImage: "caracal",numberQuestion: 3,totalQuestion: 5, hint: "Il ressemble  à  un  Lynx,  mais celui-ci  ne  fait pas  partie  de         ce  Genre.", choiceList:
//                 [QuestionChoice(choiceText: "Caracal", isCorrect: true),
//                 QuestionChoice(choiceText: "Lynx du Golfe"),
//                 QuestionChoice(choiceText: "Jaguarondi"),
//                 QuestionChoice(choiceText: "Chat doré")]),
//            
//            QuestionModel(question: "À qui a-t-on affaire ?", questionImage: "caracal",numberQuestion: 4,totalQuestion: 5, hint: "Il ressemble  à  un  Lynx,  mais celui-ci  ne  fait pas  partie  de         ce  Genre.", choiceList:
//                 [QuestionChoice(choiceText: "Caracal", isCorrect: true),
//                 QuestionChoice(choiceText: "Lynx du Golfe"),
//                 QuestionChoice(choiceText: "Jaguarondi"),
//                 QuestionChoice(choiceText: "Chat doré")]),
//            
//            QuestionModel(question: "À qui a-t-on affaire ?", questionImage: "caracal",numberQuestion: 5,totalQuestion: 5, hint: "Il ressemble  à  un  Lynx,  mais celui-ci  ne  fait pas  partie  de         ce  Genre.", choiceList:
//                 [QuestionChoice(choiceText: "Caracal", isCorrect: true),
//                 QuestionChoice(choiceText: "Lynx du Golfe"),
//                 QuestionChoice(choiceText: "Jaguarondi"),
//                 QuestionChoice(choiceText: "Chat doré")]),
//        ]
//    }
//}
