//
//  QuestRowView.swift
//  AnimalScan
//
//  Created by Jules Liegeois on 05/06/2026.
//


import SwiftUI

struct QuestRowView: View {
    var quest: Quest
    var body: some View {
        Button {
//            quest.progress += 1
        } label: {
            VStack {
                HStack {
                    Text(quest.target)
                    Spacer()
                    Text("+\(quest.reward) pts")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 6)
                        .background(
                            Capsule()
                                .fill(Color.yellow.opacity(0.85))
                        )
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                HStack {
                    ProgressView(value: Double(quest.progress), total: Double(quest.objective))
                        .tint(.foreground1)
                        .background(.white)
                        .clipShape(Capsule())
                        .scaleEffect(x: 1, y: 1.5)
                    Text("\(quest.progress)/\(quest.objective)")
                }
            }
            .foregroundStyle(.black)
            .padding(8)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(.white.opacity(0.7))
                    .shadow(radius: 4)
            )
        }
    }
}

#Preview {
    ZStack {
        LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
            .ignoresSafeArea()
        QuestRowView(quest: Quest(target: "Scanner un oiseau", reward: 200, type: .daily, progress: 3, objective: 5))
    }
}
