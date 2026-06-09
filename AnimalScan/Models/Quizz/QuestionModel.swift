//
//  QuestionModel.swift
//  AnimalScan
//
//  Created by Apprenant 85 on 07/06/2026.
//

import Foundation

struct Question {
    var currentQuestionIndex: Int
    var questionModel: QuestionModel
//    var totalScore: Int = 0
}

struct QuestionModel {
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


