//
//  BlogHubView.swift
//  AnimalScan
//
//  Created by Jules Liegeois on 01/06/2026.
//

import SwiftUI

struct BlogHubView: View {
    @State private var activeEvent = true
    @State private var activeActivity = false
    @State private var activeArticle = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                Text("Blog")
                    .font(.system(size: 26, weight: .bold))
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 12) {
                        
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            HStack(spacing: 8) {
                                CategoryPill(label: "Arthopodes")
                                CategoryPill(label: "Félins")
                                CategoryPill(label: "Aquatique")
                                CategoryPill(label: "Arthopodes")
                                CategoryPill(label: "Félins")
                                CategoryPill(label: "Aquatique")
                            }
                            .padding(.top)
                            .padding(.horizontal, 6)
                            .padding(.bottom)
                        })
                        
                        VStack {
                            Button {
                                activeEvent.toggle()
                            } label: {
                                HStack {
                                    Image(systemName: "megaphone")
                                    Text("Evénements")
                                }
                                .font(.system(size: 22, weight: .medium))
                                .foregroundStyle(.black)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false, content: {
                                HStack(spacing: 8) {
                                    EventCard(label: "Est-ce que les canards volent ?", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hend. Consectetur adipiscing elit. Ut et massa mi. Aliquam in hend.Lorem ipsum dolor sit amet.", icon: "megaphone", ctaLabel: "Lire l'événement", active: activeEvent)
                                    EventCard(label: "Est-ce que les canards volent ?", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hend. Consectetur adipiscing elit. Ut et massa mi. Aliquam in hend.Lorem ipsum dolor sit amet.", icon: "megaphone", ctaLabel: "Lire l'événement", active: activeEvent)
                                    EventCard(label: "Est-ce que les canards volent ?", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hend. Consectetur adipiscing elit. Ut et massa mi. Aliquam in hend.Lorem ipsum dolor sit amet.", icon: "megaphone", ctaLabel: "Lire l'événement", active: activeEvent)
                                }
                                .padding(.top)
                                .padding(.bottom)
                            })
                        }
                        VStack {
                            Button {
                                activeActivity.toggle()
                            } label: {
                                HStack {
                                    Image(systemName: "megaphone")
                                    Text("Activités")
                                }
                                .font(.system(size: 22, weight: .medium))
                                .foregroundStyle(.black)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false, content: {
                                HStack(spacing: 8) {
                                    EventCard(label: "Est-ce que les canards volent ?", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hend. Consectetur adipiscing elit. Ut et massa mi. Aliquam in hend.Lorem ipsum dolor sit amet.", icon: "megaphone", ctaLabel: "Lire l'activité", active: activeActivity)
                                    EventCard(label: "Est-ce que les canards volent ?", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hend. Consectetur adipiscing elit. Ut et massa mi. Aliquam in hend.Lorem ipsum dolor sit amet.", icon: "megaphone", ctaLabel: "Lire l'activité", active: activeActivity)
                                    EventCard(label: "Est-ce que les canards volent ?", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hend. Consectetur adipiscing elit. Ut et massa mi. Aliquam in hend.Lorem ipsum dolor sit amet.", icon: "megaphone", ctaLabel: "Lire l'activité", active: activeActivity)
                                }
                                .padding(.top)
                                .padding(.bottom)
                            })
                        }
                        VStack {
                            Button {
                                activeArticle.toggle()
                            } label: {
                                HStack {
                                    Image(systemName: "megaphone")
                                    Text("Articles")
                                }
                                .font(.system(size: 22, weight: .medium))
                                .foregroundStyle(.black)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false, content: {
                                HStack(spacing: 8) {
                                    EventCard(label: "Est-ce que les canards volent ?", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hend. Consectetur adipiscing elit. Ut et massa mi. Aliquam in hend.Lorem ipsum dolor sit amet.", icon: "megaphone", ctaLabel: "Lire l'article", active: activeArticle)
                                    EventCard(label: "Est-ce que les canards volent ?", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hend. Consectetur adipiscing elit. Ut et massa mi. Aliquam in hend.Lorem ipsum dolor sit amet.", icon: "megaphone", ctaLabel: "Lire l'article", active: activeArticle)
                                    EventCard(label: "Est-ce que les canards volent ?", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hend. Consectetur adipiscing elit. Ut et massa mi. Aliquam in hend.Lorem ipsum dolor sit amet.", icon: "megaphone", ctaLabel: "Lire l'article", active: activeArticle)
                                }
                                .padding(.top)
                                .padding(.bottom)
                            })
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

struct CategoryPill: View {
    let label: String
    var body: some View {
        Button {
            
        } label: {
            Text(label)
                .foregroundStyle(.black)
                .font(.system(size: 14, weight: .regular))
                .padding(.vertical, 9)
                .padding(.horizontal, 19)
                .background(content: {
                    Capsule()
                        .fill(.white.opacity(0.95))
                        .shadow(color: .black.opacity(0.5), radius: 3, x: 3, y: 4)
                })
                .overlay {
                    Capsule()
                        .stroke(Color.accent.opacity(0.75), lineWidth: 2)
                }
        }
    }
}

struct EventCard: View {
    let label: String
    let content: String
    let icon: String
    let ctaLabel: String
    let active: Bool
    
    var body: some View {
        Button {
            
        } label: {
            VStack(spacing: 16) {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 14) {
                        HStack {
                            Text(label)
                                .font(.system(size: 16))
                                .foregroundStyle(.black)
                            Spacer()
                            Image(systemName: icon)
                                .font(.system(size: 16))
                                .foregroundStyle(.black)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text(content)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, maxHeight: active ? .infinity : 90, alignment: .leading, )
                            .foregroundStyle(.black.opacity(0.7))
                        
                        if active {
                            Image("canard")
                                .resizable()
                                .scaledToFill()
                                .frame(maxWidth: .infinity, maxHeight: 150)
                                .clipShape(RoundedRectangle(cornerRadius: 14))
                                .background(
                                    RoundedRectangle(cornerRadius: 14)
                                        .shadow(color: .black.opacity(0.5), radius: 3, x: 3, y: 4)
                                )
                            
                            Button {
                                
                            } label: {
                                Text(ctaLabel)
                                    .foregroundStyle(.black)
                                    .font(.system(size: 14, weight: .regular))
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .padding(.vertical, 11)
                                    .background(content: {
                                        RoundedRectangle(cornerRadius: 14)
                                            .fill(.white.opacity(0.95))
                                            .shadow(color: .black.opacity(0.5), radius: 3, x: 3, y: 4)
                                    })
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color.accent.opacity(0.75), lineWidth: 2)
                                    }
                            }
                        }
                    }
                    .padding()
                }
            }
            .frame(height: active ? .infinity : 150, alignment: .leading)
            .animation(.easeInOut, value: active)
            .containerRelativeFrame(.horizontal) { length, _ in
                length * 0.85
            }
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(.ultraThinMaterial)
                    .shadow(color: .black.opacity(0.5), radius: 3, x: 3, y: 4)
            )
        }
    }
}


#Preview {
    BlogHubView()
}
