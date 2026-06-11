//
//  DefeatView.swift
//  AnimalScan
//
//  Created by Apprenant 85 on 02/06/2026.
//
//            C O M P T E   À    R E B O U R S

import SwiftUI
import Combine

struct DefeatView: View {
    
    @ObservedObject var qe: QuestionEngine
      
    @State private var timeRemain = 15
    
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        
       
            
            ZStack{
             
//                ProgressView(value: Float(qe.score), total: 15.00 ){
//                    
//                } currentValueLabel: {
                    Text("\(Int(timeRemain))")
//                        .padding(.top,15)
                        .foregroundStyle(.backgroundCard)
                        .font(.system(size: 50))
                        .fontWeight(.black)
                        .fontDesign(.rounded)
                        .onReceive(timer) { _ in
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                                if timeRemain > 0 && qe.score > 0 {
                                    
                                    timeRemain -= 1
                                    qe.score -= 1
                                }
                            }
                            if timeRemain == 0 && qe.score == 0 {
                                
                                timer.upstream.connect().cancel()
                            }
                            
                        }
                }
                .frame(width: 300)
                
                
//            }
//            
//            .tint(LinearGradient(gradient: Gradient(colors: [Color.accent,Color.backgroundCard]), startPoint: .topTrailing, endPoint: .topLeading))
        }
 
        
    }


struct DefeatView_Preview: PreviewProvider {
    static var previews: some View {
        DefeatView(qe: QuestionEngine())
    }
}
