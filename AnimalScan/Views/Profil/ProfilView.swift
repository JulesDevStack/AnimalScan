//
//  ProfilView.swift
//  AnimalScan
//
//  Created by Jules Liegeois on 11/06/2026.
//

import SwiftUI

struct profilStatCard: View {
    let label: String
    let value: Int
    
    var body: some View {
        VStack {
            Text(String(value))
                .font(.system(size: 26, weight: .regular))
                .multilineTextAlignment(.center)
                .foregroundColor(.orange)
            Text(label)
                .font(.system(size: 11, weight: .regular))
                .multilineTextAlignment(.center)
                .foregroundColor(.foreground1)
        }
        .padding(.horizontal, 2)
        .padding(.vertical, 14)
        .frame(maxWidth: .infinity, alignment: .center)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(red: 1, green: 0.99, blue: 0.97).opacity(0.80))
                .shadow(color: .black.opacity(0.2), radius: 3, x: 3, y: 4)
        )
        
    }
}

enum Rarity: String, CaseIterable {
    case commun = "Commun"
    case rare = "Rare"
    case epic = "Épique"
    case legendary = "Légendaire"
}

struct profilCollecCard: View {
    let image: String
    let label: String
    let discoverDate: String = "12/06/2026"
    let rarity: Rarity
    var rarityColor: Color {
        switch rarity {
            case .commun:
                return .green
            case .rare:
                return .blue
            case .epic:
                return .purple
            case .legendary:
                return .orange
        }
    }
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            VStack(spacing: 0) {
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .clipShape(
                        UnevenRoundedRectangle(topLeadingRadius: 20, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 20)
                    )
                VStack(spacing: 6) {
                    Text(label)
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(.foreground1)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(discoverDate)
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(.foreground1)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(
                    UnevenRoundedRectangle(topLeadingRadius: 0, bottomLeadingRadius: 20, bottomTrailingRadius: 20, topTrailingRadius: 0)
                        .fill(Color(red: 1, green: 0.99, blue: 0.97).opacity(0.80))
                )
            }
            
            Text(rarity.rawValue)
                .foregroundStyle(rarityColor)
                .font(.system(size: 14, weight: .semibold))
                .padding(.horizontal)
                .padding(.vertical, 5)
                .background(
                    Capsule()
                        .fill(Color.white.mix(with: rarityColor, by: 0.3).opacity(0.8))
                        .stroke(rarityColor, lineWidth: 2)
                )
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 10)
                .padding(.top, 8)
        }
        .frame(maxWidth: .infinity)
    }
}



struct ProfilView: View {
    
    var body: some View {
        
        NavigationStack {
            ZStack(alignment: .topLeading) {
                LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack(alignment: .center, spacing: 22) {
                        Image("profil")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 90, height: 90)
                            .clipShape(Circle())
                            .background(
                                Circle()
                                    .stroke(Color.foreground1, lineWidth: 20)
                                    .stroke(Color.white, lineWidth: 10)
                            )
                        
                        VStack(spacing: 6) {
                            Text("Pitus Maximus GrosBidus alias PMG")
                                .font(.system(size: 22, weight: .semibold))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.foreground1)
                            
                            Text("Naturaliste passionnée · Paris")
                                .font(.system(size: 16, weight: .regular))
                                .kerning(0.3)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.foreground1)
                        }
                        
                        HStack(spacing: 12) {
                            profilStatCard(label: "Animaux scannés", value: 47)
                            profilStatCard(label: "Quêtes complétées", value: 16)
                            profilStatCard(label: "Niveau actuel", value: 8)
                        }
                        .frame(maxWidth: .infinity, alignment: .center)
                        
                        HStack {
                            Text("Ma Collection")
                                .font(.system(size: 22, weight: .semibold))
                                .foregroundColor(.foreground1)
                            Spacer()
                            Text("Voir tout")
                                .font(.system(size: 16, weight: .semibold))
                                .foregroundStyle(.foreground1)
                            Image(systemName: "arrow.right")
                                .font(.system(size: 16, weight: .semibold))
                                .foregroundStyle(.foreground1)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack(spacing: 12) {
                            HStack(spacing: 12) {
                                profilCollecCard(image: "Renard", label: "Renard roux", rarity: .rare)
                                profilCollecCard(image: "Chouette", label: "Chouette hulotte", rarity: .epic)
                            }
                            HStack(spacing: 12) {
                                profilCollecCard(image: "Chevreuil", label: "Chevreuil", rarity: .epic)
                                profilCollecCard(image: "Papillon", label: "Papillon azuré", rarity: .legendary)
                            }
                        }
                        
                        VStack {
                            HStack {
                                Text("Progression niveau 8")
                                    .font(.system(size: 16, weight: .semibold))
                                    .foregroundColor(.foreground1)
                                Spacer()
                                Text("2300 / 4000 xp")
                                    .font(.system(size: 12, weight: .medium))
                                    .foregroundColor(.foreground1)
                            }
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                            
                            GoldProgressBar(progress: 0.7, height: 6)
                            
                            Text("660 XP pour atteindre le niveau 9")
                                .font(.system(size: 13, weight: .medium))
                                .foregroundColor(.foreground1)
                                .padding(.vertical, 3)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                            
                            HStack(spacing: 12) {
                                NavigationLink(destination: RankingView()) {
                                    HStack {
                                        Text("Classement")
                                            .fontDesign(.serif)
                                            .font(.system(size: 14))
                                            .fontWeight(.medium)
                                        Image(systemName: "crown.fill")
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
                                .frame(maxWidth: .infinity)
                                
                                NavigationLink(destination: QuestListView()) {
                                    HStack {
                                        Text("Quêtes en cours")
                                            .fontDesign(.serif)
                                            .font(.system(size: 14))
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
                                .frame(maxWidth: .infinity)
                            }
                        }
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(red: 1, green: 0.99, blue: 0.97).opacity(0.80))
                        )
                        .frame(maxWidth: .infinity)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                }
            }
        }
    }
}



#Preview {
    ProfilView()
}
