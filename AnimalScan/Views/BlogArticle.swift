//
//  BlogArticle.swift
//  AnimalScan
//
//  Created by Jules Liegeois on 03/06/2026.
//

import SwiftUI

struct BlogArticle: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                ZStack(alignment: .bottom) {
                    Image("cnard2")
                        .resizable()
                        .scaledToFill()
                        .frame(width: .infinity, height: 300)
                    HStack {
                        Image(systemName: "arrowshape.backward.circle")
                            .foregroundStyle(.white)
                            .font(.system(size: 54))
                        Spacer()
                        Image(systemName: "house.circle")
                            .foregroundStyle(.white)
                            .font(.system(size: 54))
                    }
                    .padding(40)
                    .frame(width: .infinity, height: 300, alignment: .top)
                    Text("Est-ce que les canards volent ?")
                        .font(.system(size: 22, weight: .bold))
                        .foregroundStyle(.background1)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.ultraThinMaterial.opacity(0.65))
                }
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading) {
                        Text("Canards sauvages : Maîtres du ciel")
                            .font(.title)
                            .foregroundStyle(.foreground1)
                            .padding(.bottom)
                        
                        Text("Pour les canards sauvages, le vol n'est pas une option - il est essentiel pour la migration, la recherche de nourriture et l'échappement aux prédateurs. Leur anatomie est parfaitement adaptée pour un vol puissant et rapide.")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundStyle(.foreground1)
                            .padding(.bottom)
                        Text("Pour les canards sauvages, le vol n'est pas une option - il est essentiel pour la migration, la recherche de nourriture et l'échappement aux prédateurs. Leur anatomie est parfaitement adaptée pour un vol puissant et rapide.")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundStyle(.foreground1)
                            .padding(.bottom)
                        Text("Pour les canards sauvages, le vol n'est pas une option - il est essentiel pour la migration, la recherche de nourriture et l'échappement aux prédateurs. Leur anatomie est parfaitement adaptée pour un vol puissant et rapide.")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundStyle(.foreground1)
                            .padding(.bottom)
                        Text("Pour les canards sauvages, le vol n'est pas une option - il est essentiel pour la migration, la recherche de nourriture et l'échappement aux prédateurs. Leur anatomie est parfaitement adaptée pour un vol puissant et rapide.")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundStyle(.foreground1)
                            .padding(.bottom)
                        Text("Pour les canards sauvages, le vol n'est pas une option - il est essentiel pour la migration, la recherche de nourriture et l'échappement aux prédateurs. Leur anatomie est parfaitement adaptée pour un vol puissant et rapide.")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundStyle(.foreground1)
                            .padding(.bottom)
                        
                        HStack {
                            Button {
                                
                            } label: {
                                HStack {
                                    Text("Est ce que les pandas peuvent se faire en tombant ? ")
                                        .multilineTextAlignment(.leading)
                                    
                                    Image(systemName: "chevron.right.circle")
                                        .font(.system(size: 42))
                                        .padding(.leading)
                                }
                                .foregroundStyle(.foreground1)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(.ultraThinMaterial)
                                        .shadow(color: .black.opacity(0.5), radius: 3, x: 3, y: 4)
                                )
                            }
                        }
                    }
                }
                .padding()
                .contentMargins(16, for: .scrollContent)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    BlogArticle()
}
