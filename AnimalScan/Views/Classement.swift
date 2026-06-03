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
            LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2]), startPoint: .topLeading, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 12) {
                Text("Classements")
                    .font(.system(size: 22, weight: .bold))
                    .padding(.bottom, 24)
                    .frame(maxWidth: .infinity)
                
                HStack {
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
                            UnevenRoundedRectangle(topLeadingRadius: 32, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 32)
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
                            UnevenRoundedRectangle(topLeadingRadius: 32, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 32)
                                .fill(selectedTab == "general" ? .foreground1 : .background2)
                        )
                    }
                }
                .frame(maxWidth: .infinity)
                
                ScrollView {
                    if selectedTab == "semaine" {
                        VStack {
                            UserRanking(userName: "Yann", userScore: 3200, firstPlace: true)
                            UserRanking(userName: "José", userScore: 3100, firstPlace: false)
                            UserRanking(userName: "Yamine", userScore: 3000, firstPlace: false)
                            UserRanking(userName: "Charlotte", userScore: 2900, firstPlace: false)
                            UserRanking(userName: "Jules", userScore: 2900, firstPlace: false)
                            UserRanking(userName: "John Doe", userScore: 2900, firstPlace: false)
                            UserRanking(userName: "Charlotte", userScore: 2900, firstPlace: true)
                            UserRanking(userName: "Jules", userScore: 2900, firstPlace: false)
                            UserRanking(userName: "John Doe", userScore: 2900, firstPlace: false)
                            UserRanking(userName: "Yann", userScore: 3200, firstPlace: false)
                            UserRanking(userName: "José", userScore: 3100, firstPlace: false)
                            UserRanking(userName: "Yamine", userScore: 3000, firstPlace: false)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    } else if selectedTab == "general" {
                        VStack {
                            UserRanking(userName: "Charlotte", userScore: 2900, firstPlace: true)
                            UserRanking(userName: "Jules", userScore: 2900, firstPlace: false)
                            UserRanking(userName: "John Doe", userScore: 2900, firstPlace: false)
                            UserRanking(userName: "Yann", userScore: 3200, firstPlace: false)
                            UserRanking(userName: "José", userScore: 3100, firstPlace: false)
                            UserRanking(userName: "Yamine", userScore: 3000, firstPlace: false)
                            UserRanking(userName: "Charlotte", userScore: 2900, firstPlace: true)
                            UserRanking(userName: "Jules", userScore: 2900, firstPlace: false)
                            UserRanking(userName: "John Doe", userScore: 2900, firstPlace: false)
                            UserRanking(userName: "Yann", userScore: 3200, firstPlace: false)
                            UserRanking(userName: "José", userScore: 3100, firstPlace: false)
                            UserRanking(userName: "Yamine", userScore: 3000, firstPlace: false)
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
    let userName: String
    let userScore: Int
    let firstPlace: Bool
    
    var body: some View {
        HStack {
            VStack {
                Text(userName)
                    .font(.title3)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(String(userScore))
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
