//
//  WinView.swift
//  AnimalScan
//
//  Created by Apprenant 85 on 02/06/2026.
//

import SwiftUI

struct WinView: View {
    @ObservedObject var qe: QuestionEngine
    
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack(alignment: .center){
                    
                    Text("VICTOIRE")
                        .padding(.top,90)
                        .font(.system(size: 60))
                        .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.foreground1,Color.accent,Color.background3,Color.background2]), startPoint: .top, endPoint: .bottom))
                        .fontWeight(.heavy)
                        .fontDesign(.serif)
                        
// Fond carte + image
                    
                    ZStack{
                          
                        UnevenRoundedRectangle(topLeadingRadius: 0,bottomLeadingRadius: 500,bottomTrailingRadius: 0,topTrailingRadius: 500)
                            .frame(width: 445, height: 435)
                            .foregroundStyle(.backgroundCard)
                        UnevenRoundedRectangle(topLeadingRadius: 0,bottomLeadingRadius: 500,bottomTrailingRadius: 0,topTrailingRadius: 500)
                            .frame(width: 405, height: 395)
                            .foregroundStyle(.background3)
                        UnevenRoundedRectangle(topLeadingRadius: 0,bottomLeadingRadius: 500,bottomTrailingRadius: 0,topTrailingRadius: 500)
                            .frame(width: 420, height: 350)
                            .foregroundStyle(.accent)
//                        Mask :
                        UnevenRoundedRectangle(topLeadingRadius: 0,bottomLeadingRadius: 300,bottomTrailingRadius: 0,topTrailingRadius: 300)
                            .frame(width: 460, height: 320)
                            .foregroundStyle(.background2)
                       
                        
                        RoundedRectangle(cornerRadius: 32)
                            .frame(width: 338,height: 416)
                            .padding(.bottom)
                            .foregroundStyle(.accent.opacity(0.8))
                        RoundedRectangle(cornerRadius: 32)
                            .frame(width: 335,height: 413)
                            .padding(.bottom)
                            .foregroundStyle(AngularGradient(gradient: Gradient(colors: [Color.yellow,Color.orange, Color.accent, Color.yellow, Color.orange, Color.accent, Color.orange, Color.yellow]), center: .center, angle: .degrees(90.00)))
                            
                        RoundedRectangle(cornerRadius: 32)
                            .frame(width: 320,height: 400)
                            .padding(.bottom)
                        
                        ZStack{
                            
                            Image("jaguar2")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 320,height: 290)
                                .clipped()
                                .cornerRadius(32)
                                .mask(LinearGradient(colors: [.black, .clear],
                                                     startPoint: .center,
                                                     endPoint: .bottom
                                                    ))
                            
                        }
                        .padding(.bottom,110)
                        
                        // Eléments carte :
                        HStack{
                            VStack{
                                
                                Image("card1")
                                    .resizable()
                                    .frame(width: 105, height: 105)
                                Text("Statut")
                                    .foregroundStyle(.backgroundCard)
                                    .fontDesign(.serif)
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                ZStack{
                                    Circle()
                                        .fill(.cardstyle)
                                        .frame(width: 28)
                                    Text("NT")
                                        .foregroundStyle(.backgroundCard)
                                        .font(.footnote)
                                        .fontWeight(.semibold)
                                        .padding(6)
                                }
                                Text("Quasi Menacée")
                                    .foregroundStyle(.backgroundCard)
                                    .font(.caption)
                                    .fontWeight(.light)
                                    .fontDesign(.serif)
                            }
                            
                            .padding(.top,185)
                            .padding(.trailing,38)
                            
                            VStack(alignment: .leading){
                                Text("JAGUAR")
                                    .foregroundStyle(.backgroundCard)
                                    .font(.title)
                                    .fontDesign(.serif)
                                    .fontWeight(.semibold)
                                    .kerning(1)
                                HStack{
                                    Image(systemName: "folder")
                                        .foregroundStyle(.cardstyle)
                                        .fontWeight(.semibold)
                                        .font(.headline)
                                        .padding(2)
                                    Text("Mammifères")
                                        .foregroundStyle(.backgroundCard)
                                        .fontDesign(.rounded)
                                        .fontWeight(.bold)
                                        .kerning(1)
                                        .font(.footnote)
                                }
                                HStack{
                                    Image(systemName: "paperclip")
                                        .foregroundStyle(.cardstyle)
                                        .fontWeight(.semibold)
                                        .font(.headline)
                                        .padding(2)
                                    Text(" Félidés")
                                        .foregroundStyle(.backgroundCard)
                                        .fontDesign(.rounded)
                                        .fontWeight(.bold)
                                        .kerning(1)
                                        .font(.footnote)
                                }
                                HStack{
                                    Image(systemName: "gauge")
                                        .foregroundStyle(.cardstyle)
                                        .fontWeight(.semibold)
                                        .font(.headline)
                                        .padding(2)
                                    Text(" 70 à 140 kg")
                                        .foregroundStyle(.backgroundCard)
                                        .fontDesign(.rounded)
                                        .fontWeight(.bold)
                                        .kerning(1)
                                        .font(.footnote)
                                }
                                HStack{
                                    Image(systemName: "ruler")
                                        .foregroundStyle(.cardstyle)
                                        .fontWeight(.semibold)
                                        .font(.headline)
                                        .padding(2)
                                    Text("1,50 à 1,80 m")
                                        .foregroundStyle(.backgroundCard)
                                        .fontDesign(.rounded)
                                        .fontWeight(.bold)
                                        .kerning(1)
                                        .font(.footnote)
                                }
                            }
                            .padding(.top,190)
                        }
                        
                    }
                    
                    // Bas écran :
                    ZStack{
                        RoundedRectangle(cornerRadius: 70)
                            .foregroundStyle(.accent)
                            .frame(width: 418, height: 322)
                        RoundedRectangle(cornerRadius: 70)
                            .foregroundStyle(.background3)
                            .frame(width: 415, height: 315)
                        RoundedRectangle(cornerRadius: 70)
                            .foregroundStyle(.backgroundCard)
                            .frame(width: 410, height: 300)
                        
                        ZStack{
                            
                            UnevenRoundedRectangle(topLeadingRadius: 70, bottomLeadingRadius: 0,bottomTrailingRadius: 0,topTrailingRadius: 70)
                                .frame(width: 355,height: 130)
                                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.accent, Color.background3,Color.background2]), startPoint: .top, endPoint: .bottom))
                                .padding(.bottom,118)
                            
                            // Stats :
                            
                            Text("Résumé :")
                                .font(.title)
                                .foregroundStyle(.backgroundCard)
                                .fontWeight(.semibold)
                                .kerning(2)
                                .fontDesign(.serif)
                                .padding(.bottom,190)
                            
                            // Questions score :
                            
                            HStack{
                                Image(systemName: "questionmark.circle.fill")
                                    .font(.system(size: 25))
                                    .foregroundStyle(.backgroundCard)
                                    .padding(.trailing,15)
                                
                                Text("\(qe.manyCorrect())/\(qe.model.questionModel.totalQuestion)")
                                    .font(.system(size: 23))
                                    .foregroundStyle(.backgroundCard)
                                    .fontWeight(.black)
                                    .kerning(2)
                                
                            }
                            .padding(.bottom,90)
                            .padding(.trailing,50)
                            
                            // Points :
                            HStack{
                                Image(systemName: "p.circle.fill")
                                    .font(.system(size: 25))
                                    .foregroundStyle(.backgroundCard)
                                    .padding(.leading,80)
                                
                                Text("\(qe.totalScore) points")
                                    .font(.system(size: 23))
                                    .foregroundStyle(.backgroundCard)
                                    .fontWeight(.black)
                                    .kerning(2)
                                    .padding(.horizontal,16)
                                
                                // Classement :
                                NavigationLink{
                                    RankingView()
                                }label: {
                                    ZStack{
                                        Circle()
                                            .stroke(.backgroundCard, lineWidth: 13)
                                            .fill(.background3)
                                            .frame(width: 45)
                                        
                                        Image(systemName: "crown.fill")
                                            .font(.system(size: 24))
                                            .foregroundStyle(.backgroundCard)
                                        
                                    }
                                    .padding(.trailing,9)
                                    .padding(.bottom,40)
                                }
                            }
                            .padding(.bottom,25)
                        }
                        
                        // Rejouer / Menu button :
                        
                        HStack{
                            NavigationLink{
                                CountdownView()
                            }label: {
                                Text("REJOUER")
                                    .padding()
                                    .font(.title2)
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
                            NavigationLink{
                                HubQuizView(qe: qe)
                            }label:{
                                Text("MENU")
                                    .padding()
                                    .frame(width: 135,height: 57)
                                    .font(.title2)
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
                            .padding(.leading,50)
                            
                            
                        }
                        .padding(.top,110)
                    }/*.padding(.bottom,160)*/
                }
//                .padding(.top,90)
                
                //       Confetti pattern
                //            Rectangle()
                //                .fill(.green)
                //                .frame(width: 5, height: CGFloat.random(in: 10...20))
                //                .rotationEffect(.degrees(40))
            }
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    WinView(qe: QuestionEngine())
}
