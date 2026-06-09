//
//  CountdownView.swift
//  AnimalScan
//
//  Created by Apprenant 85 on 02/06/2026.
//

import SwiftUI
import Combine

struct CountdownView: View {
    
    @State private var timeRemain = 3
    @State private var scale: CGFloat = 1.0
    @State private var opacity: CGFloat = 0
    @State private var animate = false
    @State private var isNavigate = false
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                    .ignoresSafeArea()
                
                Circle()
                    .stroke(
                        LinearGradient(gradient: Gradient(colors: [Color.accent,Color.background3,Color.background2,Color.backgroundCard,Color.background2,Color.background3,Color.accent,Color.background1,Color.background2,Color.background3, Color.accent,Color.background1]), startPoint: UnitPoint(x: animate ? 0.5 : -1, y: animate ? 0.5 : -0.5),
                                       endPoint: UnitPoint(x: animate ? 2 : 0.5, y: animate ? 2 : 0.5)),lineWidth: 12
                        
                    )
                    .frame(width: 300)
                    .onAppear {
                        withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                            animate = true
                        }
                    }
                NavigationLink{
                    InQuizzView(qe: QuestionEngine())
                }label: {
                    
                    Text("\(timeRemain)")
                        .font(.system(size: 90))
                        .foregroundStyle(.backgroundCard)
                        .fontWeight(.heavy)
                        .fontDesign(.rounded)
                        .scaleEffect(scale)
                        .opacity(opacity)
                        .onReceive(timer) { _ in
                            if timeRemain > 0 {
                                withAnimation(.bouncy(duration: 0.4)) {
                                    scale = 2
                                    opacity = 1
                                    
                                }
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                                    scale = 1
                                    opacity = 0.0
                                    timeRemain -= 1
                                }
                                if timeRemain == 0 {
                                    
                                    timer.upstream.connect().cancel()
//                                    isNavigate = true
                                }
                            }
                        }
                }
            }
        }.navigationBarBackButtonHidden()
    }
    //            Text(
    //                timerInterval: Date.now...Date(timeInterval: 3, since: .now),
    //                pauseTime: nil,
    //                countsDown: true,
    //                showsHours: false
    //                    )
    //            .font(.largeTitle)
    //            .fontWeight(.heavy)
    //            .foregroundStyle(.accent)
    //            .kerning(3)
    
    
}



#Preview {
    CountdownView()
}
