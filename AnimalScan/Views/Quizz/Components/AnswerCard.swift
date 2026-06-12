//
//  AnswerCard.swift
//  AnimalScan
//
//  Created by Jules Liegeois on 12/06/2026.
//
import SwiftUI

struct AnswerCard: View {
    var answerLabel: QuestionChoice
    @State var colorCard: Color = Color(.backgroundCard)
    var body: some View {
        Button {
            if answerLabel.isCorrect {
                colorCard = .green.mix(with: .black, by: 0.2)
            } else {
                colorCard = .red
            }
        } label: {
            Text(answerLabel.choiceText)
                .font(.title2)
                .foregroundStyle(colorCard)
                .fontWeight(.semibold)
                .kerning(1)
                .padding(40)
                .background(
                    RoundedRectangle(cornerRadius: 32)
                        .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.accent,Color.background3,Color.background1]), startPoint: .top, endPoint: .bottom))
                        .shadow(radius: 4, x: 0, y: 1)
                )
        }
    }
}
