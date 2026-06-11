//
//  Ranking.swift
//  AnimalScan
//
//  Created by Jules Liegeois on 03/06/2026.
//

import SwiftUI

struct RankingView: View {
    @State private var selectedTab = "semaine"
    
    init() {
        // foreground selected picker
        UISegmentedControl.appearance().setTitleTextAttributes(
            [.foregroundColor: UIColor.white], for: .selected
        )
        
        // foreground picker
        UISegmentedControl.appearance().setTitleTextAttributes(
            [.foregroundColor: UIColor(Color.foreground1)], for: .normal
        )
        
        // background selected picker
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color.foreground1)
        
        // background picker
        UISegmentedControl.appearance().backgroundColor = UIColor(Color.background1.opacity(0.2))
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                    .ignoresSafeArea()
                    
                
                ScrollView {
                    VStack(alignment: .leading) {
                        Text("Ranking")
                            .font(.system(size: 50))
                            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.foreground1,Color.accent,Color.background3,Color.background2]), startPoint: .top, endPoint: .bottom))
                            .fontWeight(.heavy)
                            .padding()
                            .fontDesign(.serif)
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        NavigationLink(destination: QuestListView()) {
                            HStack {
                                Text("Quêtes en cours")
                                    .fontDesign(.serif)
                                    .font(.title2)
                                    .fontWeight(.medium)
                                Image(systemName: "questionmark.text.page.fill")
                                    .font(.title)
                            }
                            .frame(maxWidth: .infinity)
                            .foregroundStyle(.foreground1)
                            .padding()
                            .background(
                                ZStack {
                                    Image("papierKDO")
                                        .resizable()
                                        .scaledToFill()
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(.ultraThinMaterial.opacity(0.8))
                                        .shadow(color: .black.opacity(0.1), radius: 3, x: 3, y: 4)
                                }
                            )
                            .cornerRadius(12)
                        }
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity)
                                                
                        Picker("Séléction du classement", selection: $selectedTab) {
                            Text("Semaine")
                                .tag("semaine")
                            Text("Général")
                                .tag("general")
                        }
                        .pickerStyle(.palette)
                        .padding()
                        
                        VStack {
                            if selectedTab == "semaine" {
                                ForEach(users.sorted(by: {$0.weeklyScore>$1.weeklyScore} ).enumerated(), id: \.offset) { index, user in
                                    UserRanking(user: user, score: user.weeklyScore, firstPlace: index==0)
                                }
                            } else if selectedTab == "general" {
                                ForEach(users.enumerated(), id: \.offset) { index, user in
                                    UserRanking(user: user, score: user.score, firstPlace: index==0)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
    }
}

struct UserRanking: View {
    let user: User
    let score: Int
    let firstPlace: Bool
    
    var body: some View {
        HStack {
            VStack {
                Text(user.username)
                    .font(.title3)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(String(score))
                    .font(.system(size: 14))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
            HStack {
                if firstPlace {
                    Image(systemName: "crown.fill")
                }
                ShareLink(item: "Viens m'aider a depasser \(user.username). Il a accumulé \(user.score) de score sur Animal-Scan") {
                    Label("", systemImage: "paperplane.fill")
                }
            }
        }
        .foregroundStyle(.foreground1)
        .padding(.horizontal, 24)
        .padding(.vertical, 16)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(.backgroundCard)
        )
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    RankingView()
}
