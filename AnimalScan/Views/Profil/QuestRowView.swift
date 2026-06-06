//
//  QuestRowView.swift
//  AnimalScan
//
//  Created by Jules Liegeois on 05/06/2026.
//


import SwiftUI

struct QuestRowView: View {
    @Binding var quest: Quest
    var onCompleted: (() -> Void)? = nil
    
    var body: some View {
        Button {
            if quest.progress < quest.objective {
                quest.progress += 1
            }
            
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
                HStack(spacing: 16) {
                    ProgressView(value: Double(quest.progress), total: Double(quest.objective))
                        .tint(.foreground1)
                        .background(.white)
                        .clipShape(Capsule())
                        .scaleEffect(x: 1, y: 1.5)
                    if !quest.done {
                        Text("\(quest.progress)/\(quest.objective)")
                            .foregroundStyle(quest.done ? Color(red: 0.3, green: 0.7, blue: 0.3, opacity: 1) : .foreground1)
                            .fontWeight(.bold)
                    }
                }
                if quest.done {
                    HStack {
                        Text("QUÊTE RÉUSSI !")
                            .font(.system(size: 16, weight: .bold, design: .rounded))
                            .foregroundColor(Color(red: 0.1, green: 0.3, blue: 0.1))
                            .shadow(color: .yellow, radius: 1)
                        
                        Text("\(quest.progress)/\(quest.objective)")
                            .foregroundStyle(quest.done ? Color(red: 0.3, green: 0.7, blue: 0.3, opacity: 1) : .foreground1)
                            .fontWeight(.bold)
                    }
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
        .buttonStyle(.plain)
    }
}

#Preview {
    ZStack {
        LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
            .ignoresSafeArea()
        QuestRowView(quest: .constant(quests[0]))
    }
}
