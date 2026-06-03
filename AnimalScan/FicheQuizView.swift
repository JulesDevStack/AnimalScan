//
//  FicheQuizView.swift
//  AnimalScan
//
//  Created by Apprenant 85 on 02/06/2026.
//

import SwiftUI

struct FicheQuizView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                ZStack{
                    
                    UnevenRoundedRectangle(topLeadingRadius: 0,bottomLeadingRadius: 350,bottomTrailingRadius: 0,topTrailingRadius: 0)
                        .frame(width: 400, height: 490)
                        .foregroundStyle(.backgroundCard)
                        .ignoresSafeArea()
                    
                    HStack{
                        
                        VStack{
                            
                            
                            HStack{
                                
                            Image(systemName: "leaf.fill")
                                .foregroundStyle(.mint.secondary)
                                
                            Text("FACILE")
                                .font(.caption2)
                                .foregroundStyle(.foreground1)
                                .padding(.trailing)
                                
                            }
                            
                            
                            HStack{
                                
                                Image(systemName: "questionmark.circle.fill")
                                    .foregroundStyle(.accent.secondary)
                                
                                Text("10 QUESTIONS")
                                    .font(.caption2)
                                    .foregroundStyle(.foreground1)
                                
                            }
                            
                            HStack{
                                
                                Image(systemName: "hourglass.tophalf.fill")
                                    .foregroundStyle(.foreground1.secondary)
                                Text("CHRONOMÉTRÉ")
                                    .font(.caption2)
                                    .foregroundStyle(.foreground1)
                            }
                            HStack{
                                
                                Image(systemName: "gift.fill")
                                    .foregroundStyle(.foreground1.secondary)
                                Text("1 CARTE RARE")
                                    .font(.caption2)
                                    .foregroundStyle(.foreground1)
                               
                            }
                        }
                        
                            Spacer(minLength: 100)
                            Image("lynx")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(height: 495)
                            
                    }
                   
                   
                  
                }
                Spacer(minLength: 30)
                
                ZStack{
                    
                    UnevenRoundedRectangle(topLeadingRadius: 70,bottomLeadingRadius: 0,bottomTrailingRadius: 0,topTrailingRadius: 70)
                        .frame(width: 400, height: 325)
                        .foregroundStyle(.backgroundCard)
                    
                    VStack{
                        
                        Text("Reconnaître  les   Félins")
                            .font(.title)
                            .foregroundStyle(.foreground1)
                            .kerning(2)
                            .fontWeight(.semibold)
                            .padding()
                        
                        Text("Testez vos connaissances sur les plus grands Félidés  du monde,  avec  une image  et  quatre réponses.")
                            .frame(width: 335)
                            .lineSpacing(6)
                            .foregroundStyle(.foreground1)
                            .italic()
                            .kerning(1)
                            .padding(.bottom)
                       
                        Button(action: {
                                // Your code here
                              }) {
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

                       
                        
                        
                    }
                    
                            
                }
                .padding(.top)
            }
        }
    }
}

#Preview {
    FicheQuizView()
}
