//
//  InQuizzView.swift
//  AnimalScan
//
//  Created by Apprenant 85 on 02/06/2026.
//

import SwiftUI

struct InQuizzView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                ZStack{
                    Image("jaguar1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 950, height: 600)
                        .clipShape(RoundedRectangle(cornerRadius: 0))
                  
                    ZStack{
                        RoundedRectangle(cornerRadius: 32)
                            .frame(width: 360,height: 40)
                            .foregroundStyle(.backgroundCard)
                        UnevenRoundedRectangle(topLeadingRadius: 32, bottomLeadingRadius: 32, bottomTrailingRadius: 0, topTrailingRadius: 0)
                            .frame(width: 340,height: 25)
                            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.accent, Color.background3,Color.background2, Color.background1]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    }
                    .padding(.bottom,380)
                    
                    VStack{
                        ZStack{
                            Circle()
                                .frame(width: 60)
                                .foregroundStyle(.accent)
                            Image(systemName: "lightbulb.fill")
                                .foregroundStyle(.backgroundCard)
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                        }
                        .padding(.bottom,30)
                        ZStack{
                            RoundedRectangle(cornerRadius: 32, )
                                .frame(width: 100,height: 40)
                                .foregroundStyle(.accent)
                                
                            HStack{
                                Image(systemName: "p.circle.fill")
                                    .foregroundStyle(.backgroundCard)
                                    .font(.title3)
                                    .fontWeight(.heavy)
                                
                                Text("0")
                                    .font(.largeTitle)
                                    .foregroundStyle(.backgroundCard)
                                    .fontWeight(.black)
                                    .padding(.leading, 15)
                            }
                            
                            
                        }
                        .padding(.bottom,160)
                    }
                    .padding(.leading, 300)
                    
                   
                }
                    Spacer()
                
            }.ignoresSafeArea()
            
            VStack{
                Spacer(minLength: 480)
                
                ZStack{
                    
                    UnevenRoundedRectangle(topLeadingRadius: 32, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 32)
                        .frame(width: 90, height: 40)
                        .foregroundStyle(.accent)
                    Text("1/10")
                        .font(.title3)
                        .foregroundStyle(.backgroundCard)
                        .fontWeight(.semibold)
                        .kerning(3)
                        
                }
            
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 70)
                        .foregroundStyle(.backgroundCard)
                        .frame(width: 410, height: 370)
                    
                    VStack{
                        Text("Quelle est cette espèce ? ")
                            .font(.largeTitle)
                            .foregroundStyle(.foreground1)
                            .fontWidth(.condensed)
                            .kerning(2)
                            .padding(20)
                        Spacer()
                    }
                }
                
            }
        }
    }
}

#Preview {
    InQuizzView()
}
