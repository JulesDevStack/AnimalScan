//
//  FicheQuizView.swift
//  AnimalScan
//
//  Created by Apprenant 85 on 02/06/2026.
//

import SwiftUI

struct FicheQuizView: View {
    var quizz: Quizz
    
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack{
                    ZStack{
                        
                        UnevenRoundedRectangle(topLeadingRadius: 0,bottomLeadingRadius: 350,bottomTrailingRadius: 0,topTrailingRadius: 0)
                            .frame(width: 480, height: 505)
                            .foregroundStyle(.accent.opacity(0.7))
                            .ignoresSafeArea()
                        UnevenRoundedRectangle(topLeadingRadius: 0,bottomLeadingRadius: 350,bottomTrailingRadius: 0,topTrailingRadius: 0)
                            .frame(width: 460, height: 500)
                            .foregroundStyle(.background3)
                            .ignoresSafeArea()
                        UnevenRoundedRectangle(topLeadingRadius: 0,bottomLeadingRadius: 350,bottomTrailingRadius: 0,topTrailingRadius: 0)
                            .frame(width: 430, height: 495)
                            .foregroundStyle(.background2)
                            .ignoresSafeArea()
                        UnevenRoundedRectangle(topLeadingRadius: 0,bottomLeadingRadius: 350,bottomTrailingRadius: 0,topTrailingRadius: 0)
                            .frame(width: 400, height: 490)
                            .foregroundStyle(.backgroundCard)
                            .ignoresSafeArea()
                        Image(quizz.image2)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 292, height: 500)
                            .padding(.leading,180)
                        
                            
                        
                            
//                        HStack{
                           
                            
                            VStack(alignment: .leading, spacing: 10){
                                
                                
                                HStack{
                                    
                                    Image(systemName: quizz.symbol)
                                        .foregroundStyle(.mint.secondary)
                                    
                                    Text(quizz.level)
                                        .font(.caption2)
                                        .foregroundStyle(.foreground1)
                                        .padding(.trailing)
                                    
                                }
                                
                                
                                HStack{
                                    
                                    Image(systemName: "questionmark.circle.fill")
                                        .foregroundStyle(.accent.secondary)
                                    
                                    Text(" \(quizz.question) QUESTIONS")
                                        .font(.caption2)
                                        .foregroundStyle(.foreground1)
                                    
                                }
                                
                                HStack{
                                    
                                    Image(systemName: "hourglass.tophalf.fill")
                                        .foregroundStyle(.foreground1.secondary)
                                        
                                    Text("   CHRONOMÉTRÉ")
                                        .font(.caption2)
                                        .foregroundStyle(.foreground1)
//                                        .padding(.leading)
                                }
                                HStack{
                                    
                                    Image(systemName: "gift.fill")
                                        .foregroundStyle(.foreground1.secondary)
                                    Text(" \(quizz.reward)")
                                        .font(.caption2)
                                        .foregroundStyle(.foreground1)
                                    
                                }
                              Spacer()
                            }
                            .padding(.top,80)
                            .padding(.trailing,190)
                       
                    }
                    

                    
                    ZStack{
                        
                        UnevenRoundedRectangle(topLeadingRadius: 70,bottomLeadingRadius: 0,bottomTrailingRadius: 0,topTrailingRadius: 70)
                            .frame(width: 400, height: 360)
                            .foregroundStyle(.backgroundCard)
                            .padding(.top,20)
                        
                        VStack{
                            
                            Text(quizz.name)
                                .font(.title)
                                .foregroundStyle(.foreground1)
                                .kerning(2)
                                .fontWeight(.semibold)
                                .padding()
                            
                            Text(quizz.description)
                                .frame(width: 335)
                                .lineSpacing(6)
                                .foregroundStyle(.foreground1)
                                .italic()
                                .kerning(1)
                                .padding(.bottom)
                            
                            NavigationLink{
                                CountdownView()
                            }label: {
                                Text("COMMENCER")
                                    .padding()
                                    .font(.title)
                                    .fontWeight(.medium)
                                    .foregroundColor(.backgroundCard)
                                    .kerning(1)
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.accent,Color.background3,Color.background1]), startPoint: .top, endPoint: .bottom))
                                    .cornerRadius(32)
                                    .padding(5)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 50)
                                            .trim(from: 0, to: CGFloat(1.0))
                                            .stroke(LinearGradient(gradient: Gradient(colors: [Color.accent,Color.background3,Color.background2]), startPoint: .top, endPoint: .bottom), lineWidth: 3))
                                
                            }
                            .padding(.bottom,50)
                            
                            
                            
                            
                        }
                        
                        
                    }

                }
            }
        }
    }
}

#Preview {
    FicheQuizView(quizz: quizzs[0])
}
