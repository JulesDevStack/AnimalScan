//
//  BlogArticle.swift
//  AnimalScan
//
//  Created by Jules Liegeois on 03/06/2026.
//

import SwiftUI

struct BlogArticleView: View {
    var article: Article
    var nextArticle: Article
    var body: some View {
        ZStack(alignment: .topLeading) {
            LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                ZStack(alignment: .bottom) {
                    Image(article.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: .infinity, height: 300)
                    Text(article.title)
                        .font(.system(size: 22, weight: .bold))
                        .foregroundStyle(.background1)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.ultraThinMaterial.opacity(0.65))
                }
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading) {
                        Text(article.subTitle)
                            .font(.title)
                            .foregroundStyle(.foreground1)
                            .padding(.bottom)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text(article.content)
                            .font(.system(size: 16, weight: .medium))
                            .foregroundStyle(.foreground1)
                            .padding(.bottom)
                        Text(article.content2)
                            .font(.system(size: 16, weight: .medium))
                            .foregroundStyle(.foreground1)
                            .padding(.bottom)
                        Text(article.content3)
                            .font(.system(size: 16, weight: .medium))
                            .foregroundStyle(.foreground1)
                            .padding(.bottom)
                        
                        HStack {
                            Button {
                                
                            } label: {
                                HStack {
                                    VStack(spacing: 8) {
                                        Text(nextArticle.title)
                                            .multilineTextAlignment(.leading)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                        
                                        Text(nextArticle.subTitle)
                                            .font(.system(size: 14))
                                            .multilineTextAlignment(.leading)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    Image(systemName: "chevron.right")
                                        .font(.system(size: 32))
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
    BlogArticleView(article: articles[0], nextArticle: articles[1])
}
