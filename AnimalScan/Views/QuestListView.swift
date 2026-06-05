//
//  QuestList.swift
//  AnimalScan
//
//  Created by Jules Liegeois on 04/06/2026.
//

import SwiftUI

struct QuestListView: View {
    var dailyObjective = Double(quests
        .filter({$0.type == .daily})
        .reduce(0) {
            $0 + $1.objective
        })
    var monthlyObjective = Double(quests
        .filter({$0.type == .monthly})
        .reduce(0) {
            $0 + $1.objective
        })
    var dailyProgress = Double(quests
        .filter({$0.type == .daily})
        .reduce(0) {
            $0 + $1.progress
        })
    var monthlyProgress = Double(quests
        .filter({$0.type == .monthly})
        .reduce(0) {
            $0 + $1.progress
        })
    
    var dailyObjectiveText: String { dailyObjective.formatted(.number.precision(.fractionLength(0))) }
    var monthlyObjectiveText: String { monthlyObjective.formatted(.number.precision(.fractionLength(0))) }
    var dailyProgressText: String { dailyProgress.formatted(.number.precision(.fractionLength(0))) }
    var monthlyProgressText: String { monthlyProgress.formatted(.number.precision(.fractionLength(0))) }
        

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                .ignoresSafeArea()
            ScrollView {
                VStack(alignment: .center, spacing: 32) {
                    Text("Quest List")
                        .font(.system(size: 50))
                        .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.foreground1,Color.accent,Color.background3,Color.background2]), startPoint: .top, endPoint: .bottom))
                        .fontWeight(.heavy)
                        .fontDesign(.serif)
                    
                    HStack(spacing: 8) {
                        VStack {
                            Text("Daily \(dailyProgressText)/\(dailyObjectiveText)")
                            ProgressView(value: dailyProgress, total: dailyObjective)
                                .tint(.foreground1)
                                .background(.white.opacity(0.75))
                                .clipShape(Capsule())
                                .scaleEffect(x: 1, y: 1.5)
                        }
                        .padding()
                        VStack {
                            Text("Monthly \(monthlyProgressText)/\(monthlyObjectiveText)")
                            ProgressView(value: monthlyProgress, total: monthlyObjective)
                                .tint(.foreground1)
                                .background(.white.opacity(0.75))
                                .clipShape(Capsule())
                                .scaleEffect(x: 1, y: 1.5)
                        }
                        .padding()
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(.white.opacity(0.7))
                            .shadow(radius: 4)
                    )
                    
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Quêtes quotidiennes")
                            .font(.system(size: 32, weight: .medium))
                            .foregroundStyle(.foreground1)
                        
                        ForEach(quests.filter({$0.type == .daily})) { quest in
                            QuestRowView(quest: quest)
                        }
                    }
                    
                    VStack(spacing: 16) {
                        Text("Quêtes mensuelles")
                            .font(.system(size: 32, weight: .medium))
                            .foregroundStyle(.foreground1)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ForEach(quests.filter({$0.type == .monthly})) { quest in
                            QuestRowView(quest: quest)
                        }
                    }
                    
                    Spacer()
                }
            }
            .contentMargins(16, for: .scrollContent)
        }
    }
}

#Preview {
    QuestListView()
}
