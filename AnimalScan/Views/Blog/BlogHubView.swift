//
//  BlogHubView.swift
//  AnimalScan
//
//  Created by Jules Liegeois on 01/06/2026.
//

import SwiftUI

enum BlogTab {
    case event
    case activity
    case article
}

struct BlogHubView: View {
    @State private var activeTab: BlogTab? = nil
    @State private var selectedTab: String = ""
    @State private var selectedCategory: Category?
    
    var filteredArticles: [Article] {
        if selectedCategory != nil {
            return articles.filter { $0.category == selectedCategory }
        } else {
            return articles
        }
    }
    
    private func toggleTab(_ tab: BlogTab) {
        if activeTab == tab {
            activeTab = nil
        } else {
            activeTab = tab
        }
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                    .ignoresSafeArea()
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        Text("Blog")
                            .font(.system(size: 50))
                            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.foreground1,Color.accent,Color.background3,Color.background2]), startPoint: .top, endPoint: .bottom))
                            .fontWeight(.heavy)
                            .padding(.top)
                            .fontDesign(.serif)
                        
                        VStack(alignment: .leading, spacing: 12) {
                            
                            ScrollView(.horizontal, showsIndicators: false, content: {
                                HStack(spacing: 8) {
                                    Button {
                                        selectedCategory = nil
                                    } label: {
                                        Text("Tous")
                                            .foregroundStyle(selectedCategory == nil ? .background1 : .black)
                                            .font(.system(size: 14, weight: .regular))
                                            .padding(.vertical, 9)
                                            .padding(.horizontal, 19)
                                            .background(content: {
                                                Capsule()
                                                    .fill(selectedCategory == nil ? .foreground1 : .white.opacity(0.95))
                                                    .shadow(color: .black.opacity(0.5), radius: 3, x: 3, y: 4)
                                            })
                                            .overlay {
                                                Capsule()
                                                    .stroke(Color.accent.opacity(0.75), lineWidth: 2)
                                            }
                                    }
                                    ForEach(Category.allCases, id: \.self) { cat in
                                        CategoryPill(cat: cat, selectedCategory: $selectedCategory)
                                    }
                                }
                                .padding(.top)
                                .padding(.horizontal, 6)
                                .padding(.bottom)
                            })
                            
                            VStack {
                                Button {
                                    toggleTab(.event)
                                } label: {
                                    HStack {
                                        Image(systemName: "megaphone\(activeTab == .event ? ".fill" : "")")
                                            .foregroundStyle(activeTab == .event ? .foreground1 : .black)
                                        Text("Evénements")
                                            .foregroundStyle(activeTab == .event ? .foreground1 : .black)
                                        Spacer()
                                        HStack(spacing: 8) {
                                            Text(activeTab == .event ? "Voir moins" : "Voir plus")
                                            Image(systemName: activeTab == .event ? "chevron.up" : "chevron.down")
                                        }
                                        .font(.footnote)
                                        .foregroundStyle(activeTab == .event ? .background1 : .black)
                                        .padding(.horizontal, 16)
                                        .padding(.vertical, 8)
                                        .background(
                                            Capsule()
                                                .fill(activeTab == .event ? .foreground1 : .white.opacity(0.95))
                                                .shadow(color: .black.opacity(0.5), radius: 3, x: 3, y: 4)
                                        )
                                        .overlay {
                                            Capsule()
                                                .stroke(Color.accent.opacity(0.75), lineWidth: 2)
                                        }
                                        .padding(.trailing, 8)
                                    }
                                    .font(.system(size: 22, weight: .medium))
                                    .foregroundStyle(.black)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                }
                                
                                ScrollView(.horizontal, showsIndicators: false, content: {
                                    HStack(spacing: 8) {
                                        ForEach(filteredArticles.enumerated(), id: \.offset) { (index, article) in
                                            NavigationLink(destination: BlogArticleView(article: article, nextArticle: articles[index==articles.count-1 ? 0 : index+1], index: index)) {
                                                EventCard(article: article, icon: "megaphone", ctaLabel: "Lire l'événement", active: activeTab == .event)
                                            }
                                        }
                                    }
                                    .padding(.top)
                                    .padding(.bottom)
                                })
                                .scrollTargetLayout()
                                .scrollTargetBehavior(.viewAligned)
                            }
                            VStack {
                                Button {
                                    toggleTab(.activity)
                                } label: {
                                    HStack {
                                        Image(systemName: "point.topleft.down.to.point.bottomright.curvepath\(activeTab == .activity ? ".fill" : "")")
                                            .foregroundStyle(activeTab == .activity ? .foreground1 : .black)
                                        Text("Activités")
                                            .foregroundStyle(activeTab == .activity ? .foreground1 : .black)
                                        Spacer()
                                        HStack(spacing: 8) {
                                            Text(activeTab == .activity ? "Voir moins" : "Voir plus")
                                            Image(systemName: activeTab == .activity ? "chevron.up" : "chevron.down")
                                        }
                                        .font(.footnote)
                                        .foregroundStyle(activeTab == .activity ? .background1 : .black)
                                        .padding(.horizontal, 16)
                                        .padding(.vertical, 8)
                                        .background(
                                            Capsule()
                                                .fill(activeTab == .activity ? .foreground1 : .white.opacity(0.95))
                                                .shadow(color: .black.opacity(0.5), radius: 3, x: 3, y: 4)
                                        )
                                        .overlay {
                                            Capsule()
                                                .stroke(Color.accent.opacity(0.75), lineWidth: 2)
                                        }
                                        .padding(.trailing, 8)
                                    }
                                    .font(.system(size: 22, weight: .medium))
                                    .foregroundStyle(.black)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                }
                                
                                ScrollView(.horizontal, showsIndicators: false, content: {
                                    HStack(spacing: 8) {
                                        ForEach(filteredArticles.reversed().enumerated(), id: \.offset) { (index, article) in
                                            NavigationLink(destination: BlogArticleView(article: article, nextArticle: articles[index==articles.count-1 ? 0 : index+1], index: index)) {
                                                EventCard(article: article, icon: "star", ctaLabel: "Lire l'activité", active: activeTab == .activity)
                                            }
                                        }
                                    }
                                    .padding(.top)
                                    .padding(.bottom)
                                })
                                .scrollTargetLayout()
                                .scrollTargetBehavior(.viewAligned)
                            }
                            VStack {
                                Button {
                                    toggleTab(.article)
                                } label: {
                                    HStack {
                                        Image(systemName: "book\(activeTab == .article ? ".fill" : "")")
                                            .foregroundStyle(activeTab == .article ? .foreground1 : .black)
                                        Text("Articles")
                                            .foregroundStyle(activeTab == .article ? .foreground1 : .black)
                                        Spacer()
                                        HStack(spacing: 8) {
                                            Text(activeTab == .article ? "Voir moins" : "Voir plus")
                                            Image(systemName: activeTab == .article ? "chevron.up" : "chevron.down")
                                        }
                                        .font(.footnote)
                                        .foregroundStyle(activeTab == .article ? .background1 : .black)
                                        .padding(.horizontal, 16)
                                        .padding(.vertical, 8)
                                        .background(
                                            Capsule()
                                                .fill(activeTab == .article ? .foreground1 : .white.opacity(0.95))
                                                .shadow(color: .black.opacity(0.5), radius: 3, x: 3, y: 4)
                                        )
                                        .overlay {
                                            Capsule()
                                                .stroke(Color.accent.opacity(0.75), lineWidth: 2)
                                        }
                                        .padding(.trailing, 8)
                                    }
                                    .font(.system(size: 22, weight: .medium))
                                    .foregroundStyle(.black)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                }
                                
                                ScrollView(.horizontal, showsIndicators: false, content: {
                                    HStack(spacing: 8) {
                                        ForEach(filteredArticles.reversed().enumerated(), id: \.offset) { (index, article) in
                                            NavigationLink(destination: BlogArticleView(article: article, nextArticle: articles[index==articles.count-1 ? 0 : index+1], index: index)) {
                                                EventCard(article: article, icon: "book", ctaLabel: "Lire l'article", active: activeTab == .article)
                                            }
                                        }
                                    }
                                    .padding(.top)
                                    .padding(.bottom)
                                })
                                .scrollTargetLayout()
                                .scrollTargetBehavior(.viewAligned)
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
    let cat: Category
    @Binding var selectedCategory: Category?
    var body: some View {
        Button {
            selectedCategory = selectedCategory == cat ? nil : cat
        } label: {
            Text(cat.rawValue)
                .foregroundStyle(selectedCategory == cat ? .background1 : .black)
                .font(.system(size: 14, weight: .regular))
                .padding(.vertical, 9)
                .padding(.horizontal, 19)
                .background(content: {
                    Capsule()
                        .fill(selectedCategory == cat ? .foreground1 : .white.opacity(0.95))
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
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Spacer()
                    Image(systemName: icon)
                        .font(.system(size: 16))
                        .foregroundStyle(.black)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack(spacing: 16) {
                    
                    Image(article.image)
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: !active ? 100 : .infinity, maxHeight: 150)
                        .clipShape(RoundedRectangle(cornerRadius: 14))
                        .background(
                            RoundedRectangle(cornerRadius: 14)
                                .shadow(color: .black.opacity(0.5), radius: 3, x: 3, y: 4)
                        )
                    
                    if !active {
                        Text(article.content)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, maxHeight: active ? .infinity : 90, alignment: .leading, )
                            .foregroundStyle(.black.opacity(0.7))
                    }
                }
                
                
                if active {
                    Text(article.content)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, maxHeight: active ? .infinity : 90, alignment: .leading, )
                        .foregroundStyle(.black.opacity(0.7))
                    
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
            .padding()
        }
        .frame(maxHeight: active ? .infinity : 150, alignment: .leading)
        .animation(.easeInOut, value: active)
        .containerRelativeFrame(.horizontal) { length, _ in
            length * 0.85
        }
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.backgroundCard)
                .shadow(color: .black.opacity(0.5), radius: 3, x: 3, y: 4)
        )
    }
}


#Preview {
    BlogHubView()
}
