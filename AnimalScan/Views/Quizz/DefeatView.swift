//
//  DefeatView.swift
//  AnimalScan
//
//  Created by Apprenant 85 on 02/06/2026.
//

import SwiftUI
import Combine

struct DefeatView: View {
    @ObservedObject var qe: QuestionEngine
    @State private var progress: Float = 15
    @State private var timeRemain = 15
    @State private var currentScore = 1.0
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                .ignoresSafeArea()
            
            ProgressView(value: Float(qe.score), total: 10 ){
              
                   } currentValueLabel: {
                       Text("\(Int(timeRemain))")
                           .foregroundStyle(.backgroundCard)
                           .font(.system(size: 50))
                           .fontWeight(.black)
                           .fontDesign(.rounded)
                           .onReceive(timer) { _ in
                               
                               DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                                   if timeRemain > 0 && progress > 0 {
                                       
                                       timeRemain -= 1
                                       progress -= 1
                                   }
                               }
                               if timeRemain == 0 && progress == 0 {

                                   timer.upstream.connect().cancel()
                               }
                               
                               if currentScore > 0 {
                                   currentScore -= 1
                               }
                               }
                           }
                            .frame(width: 300)
                   }
                   
                   .tint(LinearGradient(gradient: Gradient(colors: [Color.backgroundCard,Color.accent]), startPoint: .bottomLeading, endPoint: .topLeading))
                   
                   
            
            
            
// Bas Écran :
            
//            VStack{
//                Spacer()
//                ZStack{
//                    RoundedRectangle(cornerRadius: 70)
//                        .foregroundStyle(.backgroundCard)
//                        .frame(width: 410, height: 300)
//                    
//                    ZStack{
//                        UnevenRoundedRectangle(topLeadingRadius: 70, bottomLeadingRadius: 0,bottomTrailingRadius: 0,topTrailingRadius: 70)
//                            .frame(width: 355,height: 130)
//                            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.accent, Color.background3,Color.background2]), startPoint: .top, endPoint: .bottom))
//                            .padding(.bottom,118)
//                        
//                        // Stats :
//                        
//                        Text("Résumé :")
//                            .font(.title)
//                            .foregroundStyle(.backgroundCard)
//                            .fontWeight(.semibold)
//                            .kerning(2)
//                            .fontDesign(.serif)
//                            .padding(.bottom,190)
//                        
//                        // Questions score :
//                        
//                        HStack{
//                            Image(systemName: "questionmark.circle.fill")
//                                .font(.system(size: 25))
//                                .foregroundStyle(.backgroundCard)
//                                .padding(.trailing,15)
//                            
//                            Text("10/10")
//                                .font(.system(size: 23))
//                                .foregroundStyle(.backgroundCard)
//                                .fontWeight(.black)
//                                .kerning(2)
//                            
//                        }
//                        .padding(.bottom,90)
//                        .padding(.trailing,50)
//                        
//                        // Points :
//                        HStack{
//                            Image(systemName: "p.circle.fill")
//                                .font(.system(size: 25))
//                                .foregroundStyle(.backgroundCard)
//                                .padding(.leading,90)
//                            
//                            Text("98 points")
//                                .font(.system(size: 23))
//                                .foregroundStyle(.backgroundCard)
//                                .fontWeight(.black)
//                                .kerning(2)
//                                .padding(.horizontal,16)
//                            
//                            // Classement :
//                            ZStack{
//                                Circle()
//                                    .stroke(.backgroundCard, lineWidth: 13)
//                                    .fill(.background3)
//                                    .frame(width: 45)
//                                Image(systemName: "crown.fill")
//                                    .font(.system(size: 24))
//                                    .foregroundStyle(.backgroundCard)
//                                
//                            }
//                            .padding(.trailing,15)
//                            .padding(.bottom,40)
//                            
//                        }
//                        .padding(.bottom,25)
//                    }
//                    
//                    // Rejouer / Menu button :
//                    
//                    HStack{
//                        Button(action: {
//                            // Your code here
//                        }) {
//                            Text("REJOUER")
//                                .padding()
//                                .font(.title2)
//                                .fontWeight(.medium)
//                                .foregroundColor(.backgroundCard)
//                                .kerning(1)
//                                .background(LinearGradient(gradient: Gradient(colors: [Color.accent,Color.background3,Color.background1]), startPoint: .top, endPoint: .bottom))
//                                .cornerRadius(32)
//                                .padding(5)
//                                .overlay(
//                                    RoundedRectangle(cornerRadius: 50)
//                                        .trim(from: 0, to: CGFloat(1.0))
//                                        .stroke(LinearGradient(gradient: Gradient(colors: [Color.accent,Color.background3,Color.background2]), startPoint: .top, endPoint: .bottom), lineWidth: 3))
//                        }
//                        Button(action: {
//                            // Your code here
//                        }) {
//                            Text("MENU")
//                                .padding()
//                                .frame(width: 135,height: 57)
//                                .font(.title2)
//                                .fontWeight(.medium)
//                                .foregroundColor(.backgroundCard)
//                                .kerning(1)
//                                .background(LinearGradient(gradient: Gradient(colors: [Color.accent,Color.background3,Color.background1]), startPoint: .top, endPoint: .bottom))
//                                .cornerRadius(32)
//                                .padding(5)
//                                .overlay(
//                                    RoundedRectangle(cornerRadius: 50)
//                                        .trim(from: 0, to: CGFloat(1.0))
//                                        .stroke(LinearGradient(gradient: Gradient(colors: [Color.accent,Color.background3,Color.background2]), startPoint: .top, endPoint: .bottom), lineWidth: 3))
//                            
//                        }
//                        .padding(.leading,50)
//                        
//                        
//                    }
//                    .padding(.top,110)
//                }
//            }
        }
    }


#Preview {
    DefeatView(qe: QuestionEngine())
}
