//
//  HubQuizView.swift
//  AnimalScan
//
//  Created by Apprenant 85 on 01/06/2026.
//

import SwiftUI

struct HubQuizView: View {
    
    var body: some View {
        
        NavigationStack{
            
                ZStack{
                    LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                        .ignoresSafeArea()
                    
                    VStack{
                        
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 32)
                                .frame(width: 360, height: 45)
                                .foregroundStyle(.backgroundCard)
                                .shadow(radius: 3, x: 0, y: 4)
                            
                            HStack{
                                
                                Image(systemName: "magnifyingglass")
                                    .foregroundStyle(.foreground1)
                                    .font(.title)
                                
                                Text("Chercher un thème")
                                    .foregroundStyle(.foreground1)
                                    .italic()
                                Spacer()
                                
                            }.padding(.leading,35)
                            
                        }
                        HStack(){
                            Button(action: {
                                //
                            }) {
                                Image(systemName: "slider.horizontal.3")
                                    .padding(6)
                                    .font(.title2)
                                    .foregroundStyle(.accent)
                                
                            }
                            .glassEffect(.clear)
                            .padding(.leading,40)
                            Spacer()
                            
                            NavigationLink{
                                RankingView()
                            }label:{
                                ZStack{
                                    UnevenRoundedRectangle(topLeadingRadius: 32, bottomLeadingRadius: 32, bottomTrailingRadius: 32, topTrailingRadius: 32)
                                        .frame(width: 50, height: 50)
                                        .foregroundStyle(.accent.opacity(0.8))
                                    UnevenRoundedRectangle(topLeadingRadius: 32, bottomLeadingRadius: 32, bottomTrailingRadius: 32, topTrailingRadius: 32)
                                        .frame(width: 40, height: 40)
                                        .foregroundStyle(.backgroundCard)
                                    
                                    
                                    HStack{
                                        Image(systemName: "crown.fill")
                                            .foregroundStyle(.accent)
                                        
                                        
                                    }
                                }
                                .glassEffect(.clear)
                                .padding(.trailing,40)
                                
                                
                            }
                        }
                        HStack{
                            
                            ZStack{
                                UnevenRoundedRectangle(topLeadingRadius: 200,bottomLeadingRadius: 0,bottomTrailingRadius: 200, topTrailingRadius: 0)
                                    .frame(width: 360, height: 80)
                                    .foregroundStyle(.accent.opacity(0.8)
                                    )
                                UnevenRoundedRectangle(topLeadingRadius: 100,bottomLeadingRadius: 0,bottomTrailingRadius: 100, topTrailingRadius: 0)
                                    .frame(width: 35, height: 70)
                                    .foregroundStyle(.background3
                                    )
                                Text ("QUIZZ")
                                    .font(.system(size: 50, weight: .bold, design: .serif))
                                    .foregroundStyle(.backgroundCard)
                                    .kerning(15)
                            }
                        }
                        
                        ScrollView{
                        
                            VStack(alignment: .leading){
                            
                            
                            ScrollView{
                                
                                ForEach(quizzs){quizz in
                                    //                            HubQuizzRowView(imageName: quizz.image, titleName: quizz.name, savingName: quizz.saving, symbolName: quizz.symbol, levelName: quizz.level, coloriconName: quizz.coloricon)
                                    HubQuizzRowView(quizz: quizz)
                                }
                                
                            }
                            
                            
                            
                        }
                        
                    }
                }
            }
        }
    }
}
#Preview {
    HubQuizView()
}
