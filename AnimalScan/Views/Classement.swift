//
//  Classement.swift
//  AnimalScan
//
//  Created by Jules Liegeois on 03/06/2026.
//

import SwiftUI

struct Classement: View {
    @State private var selectedTab = "semaine"
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 12) {
                Text("Classements")
                    .font(.system(size: 42, weight: .bold))
                    .foregroundStyle(.foreground1.gradient)
                    .padding(.bottom, 20)
                    .frame(maxWidth: .infinity)
                
                HStack(spacing: 0) {
                    Button {
                        selectedTab = "semaine"
                    } label: {
                        HStack {
                            Image(systemName: "puzzlepiece.fill")
                            Text("SEMAINE")
                        }
                        .foregroundStyle(selectedTab == "semaine" ? .white : .foreground1)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            UnevenRoundedRectangle(topLeadingRadius: 16, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 16)
                                .fill(selectedTab == "semaine" ? .foreground1 : .background2)
                        )
                    }
                    Button {
                        selectedTab = "general"
                    } label: {
                        HStack {
                            Image(systemName: "puzzlepiece.fill")
                            Text("GENERAL")
                        }
                        .foregroundStyle(selectedTab == "general" ? .white : .foreground1)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            UnevenRoundedRectangle(topLeadingRadius: 16, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 16)
                                .fill(selectedTab == "general" ? .foreground1 : .background2)
                        )
                    }
                }
                .frame(maxWidth: .infinity)
                
                ScrollView {
                    if selectedTab == "semaine" {
                        VStack {
                            ForEach(users.sorted(by: {$0.weeklyScore>$1.weeklyScore} ).enumerated(), id: \.offset) { index, user in
//                                if index==0 {
                                    UserRanking(user: user, score: user.weeklyScore, firstPlace: index==0)
//                                }
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    } else if selectedTab == "general" {
                        VStack {
                            ForEach(users.enumerated(), id: \.offset) { index, user in
                                UserRanking(user: user, score: user.score, firstPlace: index==0)
                            }
//                            ForEach(users) { user in
//                                UserRanking(user: user, score: user.score, firstPlace: false)
//                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                .frame(height: 500)
                .contentMargins(8, for: .scrollContent)
                
                HStack {
                    Button {
                        
                    } label: {
                        Text("Rewards")
                        Image(systemName: "app.gift.fill")
                    }
                    .foregroundStyle(.foreground1)
                    .padding()
                    .background(
                        ZStack {
                            Image("papierKDO")
                                .resizable()
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.ultraThinMaterial.opacity(0.7))
                                .shadow(color: .black.opacity(0.2), radius: 3, x: 3, y: 4)
                        }
                    )
                    .cornerRadius(12)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Quêtes en cours")
                        Image(systemName: "app.gift.fill")
                    }
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.foreground1)
                    .padding()
                    .background(
                        ZStack {
                            Image("papierKDO")
                                .resizable()
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.ultraThinMaterial.opacity(0.7))
                                .shadow(color: .black.opacity(0.2), radius: 3, x: 3, y: 4)
                        }
                    )
                    .cornerRadius(12)
                }
                .frame(maxWidth: .infinity)
                
            }
            .padding(.horizontal)
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
                    .font(.callout)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
            Button {
                
            } label: {
                Image(systemName: firstPlace ? "crown.fill" : "paperplane.fill")
            }
            Spacer()
        }
        .foregroundStyle(.foreground1)
        .cornerRadius(12)
        .padding()
        .background(
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.ultraThinMaterial)
                    .shadow(color: .black.opacity(0.2), radius: 3, x: 3, y: 4)
            }
        )
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    Classement()
}
