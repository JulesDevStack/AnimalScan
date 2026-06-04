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
    
    private func switchTab(tab: String) {
        switch tab {
        case "event":
            activeEvent = true
            activeArticle = false
            activeActivity = false
        case "activity":
            activeEvent = false
            activeArticle = false
            activeActivity = true
        case "article":
            activeEvent = false
            activeArticle = true
            activeActivity = false
        default:
            activeEvent = false
            activeArticle = false
            activeActivity = false
        }
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                    .ignoresSafeArea()

                VStack {
                    Text("Blog")
                        .font(.system(size: 22, weight: .bold))
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
                                    switchTab(tab: "event")
                                } label: {
                                    HStack {
                                        Image(systemName: "megaphone")
                                        Text("Evénements")
                                        Spacer()
                                        Image(systemName: activeEvent ? "chevron.up" : "chevron.down").padding(.trailing, 8)
                                    }
                                    .font(.system(size: 22, weight: .medium))
                                    .foregroundStyle(.black)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                }
                                
                                ScrollView(.horizontal, showsIndicators: false, content: {
                                    HStack(spacing: 8) {
                                        ForEach(articles) { article in
                                            NavigationLink(destination: BlogArticleView(article: article, nextArticle: article)) {
                                                EventCard(article: article, icon: "megaphone", ctaLabel: "Lire l'événement", active: activeEvent)
                                            }
                                        }
                                    }
                                    .padding(.top)
                                    .padding(.bottom)
                                    
                                })
                            }
                            VStack {
                                Button {
                                    switchTab(tab: "activity")
                                } label: {
                                    HStack {
                                        Image(systemName: "megaphone")
                                        Text("Activités")
                                        Spacer()
                                        Image(systemName: activeActivity ? "chevron.up" : "chevron.down").padding(.trailing, 8)
                                    }
                                    .font(.system(size: 22, weight: .medium))
                                    .foregroundStyle(.black)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                }
                                
                                ScrollView(.horizontal, showsIndicators: false, content: {
                                    HStack(spacing: 8) {
                                        ForEach(articles.reversed()) { article in
                                            NavigationLink(destination: BlogArticleView(article: article, nextArticle: article)) {
                                                EventCard(article: article, icon: "megaphone", ctaLabel: "Lire l'activité", active: activeActivity)
                                            }
                                        }
                                    }
                                    .padding(.top)
                                    .padding(.bottom)
                                    
                                })
                            }
                            VStack {
                                Button {
                                    switchTab(tab: "article")
                                } label: {
                                    HStack {
                                        Image(systemName: "megaphone")
                                        Text("Articles")
                                        Spacer()
                                        Image(systemName: activeArticle ? "chevron.up" : "chevron.down").padding(.trailing, 8)
                                    }
                                    .font(.system(size: 22, weight: .medium))
                                    .foregroundStyle(.black)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                }
                                
                                ScrollView(.horizontal, showsIndicators: false, content: {
                                    HStack(spacing: 8) {
                                        ForEach(articles.reversed()) { article in
                                            NavigationLink(destination: BlogArticleView(article: article, nextArticle: article)) {
                                                EventCard(article: article, icon: "megaphone", ctaLabel: "Lire l'article", active: activeArticle)
                                            }
                                        }
                                    }
                                    .padding(.top)
                                    .padding(.bottom)
                                    
                                })
                            }
                        }
                        .padding(.leading)
                    }
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
    let article: Article
    let icon: String
    let ctaLabel: String
    let active: Bool
    
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 14) {
                HStack {
                    Text(article.title)
                        .font(.system(size: 16))
                        .foregroundStyle(.black)
                    Spacer()
                    Image(systemName: icon)
                        .font(.system(size: 16))
                        .foregroundStyle(.black)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(article.content)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, maxHeight: active ? .infinity : 90, alignment: .leading, )
                    .foregroundStyle(.black.opacity(0.7))
                
                if active {
                    Image(article.image)
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


#Preview {
    BlogHubView()
}
