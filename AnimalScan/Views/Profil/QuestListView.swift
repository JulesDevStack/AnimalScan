//
//  QuestList.swift
//  AnimalScan
//
//  Created by Jules Liegeois on 04/06/2026.
//

import SwiftUI

struct QuestListView: View {
    @State var questsList: [Quest] = quests
    
    var dailyObjective: Double { Double(questsList
        .filter({$0.type == .daily})
        .reduce(0) {
            $0 + $1.objective
        })
    }
    var monthlyObjective: Double { Double(questsList
        .filter({$0.type == .monthly})
        .reduce(0) {
            $0 + $1.objective
        })
    }
    var dailyProgress: Double { Double(questsList
        .filter({$0.type == .daily})
        .reduce(0) {
            $0 + $1.progress
        })
    }
    var monthlyProgress: Double { Double(questsList
        .filter({$0.type == .monthly})
        .reduce(0) {
            $0 + $1.progress
        })
    }
    
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
                    Text("Quêtes")
                        .font(.system(size: 50))
                        .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.foreground1,Color.accent,Color.background3,Color.background2]), startPoint: .top, endPoint: .bottom))
                        .fontWeight(.heavy)
                        .fontDesign(.serif)
                    
                    HStack(spacing: 8) {
                        VStack {
                            if dailyProgress==dailyObjective {
                                Text("Quotidiennes")
                                    .font(.title3)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color(red: 0.1, green: 0.3, blue: 0.1))
                                    .shadow(color: .yellow, radius: 1)
                                HStack {
                                    Text("\(dailyProgressText)/\(dailyObjectiveText)")
                                    Image(systemName: "checkmark.rectangle.stack.fill")
                                }
                                .foregroundColor(Color(red: 0.1, green: 0.3, blue: 0.1))
                                .shadow(color: .yellow, radius: 1)
                            } else {
                                Text("Quotidiennes")
                                    .font(.title3)
                                    .fontWeight(.medium)
                                    .foregroundStyle(.foreground1)
                                HStack {
                                    ProgressView(value: dailyProgress, total: dailyObjective)
                                        .tint(.foreground1)
                                        .background(.white.opacity(0.75))
                                        .clipShape(Capsule())
                                        .scaleEffect(x: 1, y: 1.5)
                                    Text("\(dailyProgressText)/\(dailyObjectiveText)")
                                }
                            }
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                    
                        VStack {
                            if monthlyProgress==monthlyObjective {
                                Text("Mensuelles")
                                    .font(.title3)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color(red: 0.1, green: 0.3, blue: 0.1))
                                    .shadow(color: .yellow, radius: 1)
                                HStack {
                                    Text("\(monthlyProgressText)/\(monthlyObjectiveText)")
                                    Image(systemName: "checkmark.rectangle.stack.fill")
                                }
                                .foregroundColor(Color(red: 0.1, green: 0.3, blue: 0.1))
                                .shadow(color: .yellow, radius: 1)
                            } else {
                                Text("Mensuelles")
                                    .font(.title3)
                                    .fontWeight(.medium)
                                    .foregroundStyle(.foreground1)
                                HStack {
                                    ProgressView(value: monthlyProgress, total: monthlyObjective)
                                        .tint(.foreground1)
                                        .background(.white.opacity(0.75))
                                        .clipShape(Capsule())
                                        .scaleEffect(x: 1, y: 1.5)
                                    Text("\(monthlyProgressText)/\(monthlyObjectiveText)")
                                }
                            }
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
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
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ForEach($questsList.sorted(by: { $0.wrappedValue.done == !$1.wrappedValue.done })) { $quest in
                            if $quest.wrappedValue.type == .daily {
                                QuestRowView(quest: $quest)
                            }
                        }
                    }
                    .frame(maxWidth: .infinity)
                    
                    VStack(spacing: 16) {
                        Text("Quêtes mensuelles")
                            .font(.system(size: 32, weight: .medium))
                            .foregroundStyle(.foreground1)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ForEach($questsList.sorted(by: { $0.wrappedValue.done == !$1.wrappedValue.done })) { $quest in
                            if $quest.wrappedValue.type == .monthly {
                                QuestRowView(quest: $quest)
                            }
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
