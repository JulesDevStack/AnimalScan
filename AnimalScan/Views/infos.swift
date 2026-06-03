//
//  infos.swift
//  AnimalScan
//
//  Created by Jules Liegeois on 01/06/2026.
//

import SwiftUI

struct infos: View {
    @State private var sugarCubes: Double = 0.0
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2]), startPoint: .topLeading, endPoint: .bottom)
                .ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Informations générales")
                        .font(.system(size: 22, weight: .bold))
                        .padding(.bottom, 24)
                        .frame(maxWidth: .infinity)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        HStack {
                            Image(systemName: "megaphone")
                            Text("Numéro d’urgences")
                        }
                        .font(.system(size: 15.5, weight: .medium))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack(alignment: .leading, spacing: 12) {
                            PhonePill(label: "SPA - 3717")
                            PhonePill(label: "LPO - 3818")
                            PhonePill(label: "Sauvage Urgence - 06.83.61.42.35")
                        }
                    }.padding(.bottom)
                    
                    VStack {
                        HStack {
                            Image(systemName: "globe")
                            Text("Site Web")
                        }
                        .font(.system(size: 15.5, weight: .medium))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack(spacing:20) {
                            WebPill()
                            WebPill()
                            WebPill()
                            WebPill()
                            WebPill()
                            WebPill()
                            WebPill()
                            WebPill()
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct PhonePill: View {
    let label: String
    
    var body: some View {
        Button {
            
        } label: {
            VStack {
                Text(label)
                    .foregroundStyle(Color(red: 0.149, green: 0.149, blue: 0.149))
                    .font(.system(size: 15.5, weight: .medium))
                    .padding(.vertical, 9)
                    .padding(.horizontal, 18)
                    .background (
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white.opacity(0.75))
                            .shadow(color: .black.opacity(0.08), radius: 3, x: 0, y: 4)
                    )
            }
        }
    }
}

struct WebPill: View {
    var body: some View {
        Button {
            
        } label: {
            HStack(alignment: .center) {
                VStack(alignment: .leading, spacing: 6) {
                    Text("Ligue protectrice des oiseaux")
                        .font(.system(size: 15.5, weight: .medium))
                        .foregroundStyle(.black.opacity(0.85))
                    Text("lpo.fr")
                }
                Spacer()
                Image(systemName: "chevron.right.circle")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(.black)
            }
            .padding()
            .frame(maxWidth: .infinity, minHeight: 100, alignment: .leading)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(.ultraThinMaterial)
                    .shadow(color: .black.opacity(0.08), radius: 3, x: 0, y: 4)
            )
        }
    }
}

#Preview {
    infos()
}
