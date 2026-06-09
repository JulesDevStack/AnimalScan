//
//  InQuizzView.swift
//  AnimalScan
//
//  Created by Apprenant 85 on 02/06/2026.
//

import SwiftUI
import Combine

struct InQuizzView: View {
    @ObservedObject var qe: QuestionEngine
    var columns: [GridItem] = Array(repeating: GridItem(.fixed(180),spacing: 15),count: 2)
    
    @State private var timeRemain = 15
    @State private var isPushed = false
    @State private var showHint = false
    @State private var numberHint = true
    
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        NavigationStack {
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack{
                    ZStack{
                        Image(qe.model.questionModel.questionImage)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 450, height: 600)
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
                        
                        // Eléments sur la photo :
                        
                        HStack{
                            
                            ZStack{
         
                                Circle()
                                    .stroke(lineWidth: 4)
                                    .fill(LinearGradient(gradient: Gradient(colors: [Color.backgroundCard,Color.accent]), startPoint: .bottomLeading, endPoint: .topLeading))
                                    .frame(width: 80)
                                    .glassEffect(.clear)
                                
                                                
                                Text("\(timeRemain)")
                                    .foregroundStyle(.backgroundCard)
                                    .font(.system(size: 50))
                                    .fontWeight(.black)
                                    .fontDesign(.rounded)
                                
                                    .onReceive(timer) { _ in
                                        
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                            if timeRemain > 0 {
                                                
                                                timeRemain -= 1
                                            }
                                        }
                                        if timeRemain == 0 {
                                            
                                            timer.upstream.connect().cancel()
                                            
                                        }
                                    }
                            }
                            .padding(.trailing,60)
                            
                            Button{
                                if isPushed{
                                    showHint = true
                                    numberHint = false
                                }else{
                                    DispatchQueue.main.asyncAfter(deadline: .now ()){
                                        showHint = false
                                        numberHint = true
                                    }
                                }
                                isPushed.toggle()
                            }label: {
                                
                                ZStack{
                                    Circle()
                                        .stroke(lineWidth: 4)
                                        .frame(width: 40)
                                        .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.backgroundCard,Color.accent]), startPoint: .bottomLeading, endPoint: .topLeading))
                                    Image(systemName: "lightbulb.fill")
                                        .foregroundStyle(.backgroundCard.opacity(0.9))
                                        .font(.system(size: 25))
                                        .fontWeight(.heavy)
                                    
                                }
                                .glassEffect(.clear)
                            }
                           
                            //                            .padding(.bottom,30)
                            
                        }
                        .padding(.bottom,236)
                        .padding(.leading,140)
                        
                        
                        
                        ZStack{
                           
                            RoundedRectangle(cornerRadius: 32, )
                                .frame(width: 110,height: 50)
                                .foregroundStyle(.backgroundCard)
                            RoundedRectangle(cornerRadius: 32, )
                                .frame(width: 100,height: 40)
                                .foregroundStyle(.accent)
                            
                            HStack{
                                Image(systemName: "p.circle.fill")
                                    .foregroundStyle(.backgroundCard)
                                    .font(.title3)
                                    .fontWeight(.heavy)
                                
                                Text("0")
                                    .font(.title)
                                    .foregroundStyle(.backgroundCard)
                                    .fontWeight(.black)
                                    .padding(.leading, 15)
                            }
                            //
                            
                        }
                        .padding(.leading, 280)
                        .padding(.bottom,100)
                        
                        if showHint{
                            
                                ZStack{
                                    UnevenRoundedRectangle(topLeadingRadius: 70, bottomLeadingRadius: 70, bottomTrailingRadius: 70, topTrailingRadius: 0)
                                            .frame(width: 265,height: 185)
                                            .foregroundStyle(.foreground1)
                                    UnevenRoundedRectangle(topLeadingRadius: 70, bottomLeadingRadius: 70, bottomTrailingRadius: 70, topTrailingRadius: 0)
                                            .frame(width: 260,height: 180)
                                            .foregroundStyle(.background3)
                                    UnevenRoundedRectangle(topLeadingRadius: 70, bottomLeadingRadius: 70, bottomTrailingRadius: 70, topTrailingRadius: 0)
                                            .frame(width: 250,height: 170)
                                            .foregroundStyle(.backgroundCard)
                                    
                                    VStack(alignment: .center){
                                    ZStack{
                                            Circle()
                                                .frame(width: 50)
                                                .foregroundStyle(.accent)
                                            Image(systemName: "binoculars.fill")
                                                .foregroundStyle(.backgroundCard)
                                                .font(.system(size: 28))
                                        }
                                    
                                     
                                        Text("\(qe.model.questionModel.hint)")
                                            .font(.footnote)
                                            .foregroundStyle(.accent)
                                            .frame(width: 220,height: 90)
                                    
                                    }
                            }
                            .padding(.top,150)
                        }
                        if numberHint {
                            ZStack{
                                Circle()
                                    .frame(width: 20)
                                    .foregroundStyle(.backgroundCard)
                                Text("1")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .clipped()
                                    .foregroundStyle(.accent)
                            }
                            .padding(.bottom,275)
                            .padding(.leading,325)
                            
                        }
                        
                        
                    }
                    Spacer()
                    
                }.ignoresSafeArea()
                
                // Bas de l'écran avec boutons :
                
                VStack{
                    Spacer(minLength: 480)
                    
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 70)
                            .foregroundStyle(.backgroundCard)
                            .frame(width: 410, height: 370)
                        
                        ZStack{
                            UnevenRoundedRectangle(topLeadingRadius: 42, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 42)
                                .frame(width: 105, height: 50)
                                .foregroundStyle(.backgroundCard)
                            UnevenRoundedRectangle(topLeadingRadius: 32, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 32)
                                .frame(width: 90, height: 35)
                                .foregroundStyle(.accent)
                                
                            
                            Text("\(qe.model.questionModel.numberQuestion)/\(qe.model.questionModel.totalQuestion)")
                                .font(.title3)
                                .foregroundStyle(.backgroundCard)
                                .fontWeight(.semibold)
                                .kerning(3)
                            
                            
                        }
                        
                        .padding(.bottom,405)
                        
                        VStack{
                            Text("\(qe.model.questionModel.question) ")
                                .font(.system(size: 27))
                                .foregroundStyle(.foreground1)
                                .fontWidth(.condensed)
                                .fontDesign(.serif)
                                .kerning(1)
                                .padding(.bottom,20)
                            
                            LazyVGrid(columns: columns) {
                                ForEach(qe.model.questionModel.choiceList){ QuestionChoice in
                                    NavigationLink(destination: ResultQuestionView(qe: qe, isCorrect: QuestionChoice.isCorrect)){
                                        
                                        HStack{
                                            ZStack{
                                                RoundedRectangle(cornerRadius: 32)
                                                    .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.accent,Color.background3,Color.background1]), startPoint: .top, endPoint: .bottom))
                                                    .frame(width: 180,height: 100)
                                                    .shadow(radius: 4, x: 0, y: 1)
                                                Text("\(QuestionChoice.choiceText)")
                                                    .font(.title2)
                                                    .foregroundStyle(.backgroundCard)
                                                    .fontWeight(.semibold)
                                                    .kerning(1)
                                            }
                                        }
                                    
                                    }
                                    .simultaneousGesture(TapGesture().onEnded {
                                        qe.nextQuestion()
                                    })
                                    .navigationBarBackButtonHidden()
                            }
//                                ZStack{
//                                    RoundedRectangle(cornerRadius: 32)
//                                        .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.accent,Color.background3,Color.background1]), startPoint: .top, endPoint: .bottom))
//                                        .frame(width: 190,height: 100)
//                                        .shadow(radius: 4, x: 0, y: 1)
//                                    Text("Guépard")
//                                        .font(.title)
//                                        .foregroundStyle(.backgroundCard)
//                                        .fontWeight(.semibold)
//                                        .kerning(1)
//                                }
//                            }
//                            HStack{
//                                ZStack{
//                                    RoundedRectangle(cornerRadius: 32)
//                                        .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.accent,Color.background3,Color.background1]), startPoint: .top, endPoint: .bottom))
//                                        .frame(width: 190,height: 100)
//                                        .shadow(radius: 4, x: 0, y: 1)
//                                    Text("Jaguar")
//                                        .font(.title)
//                                        .foregroundStyle(.backgroundCard)
//                                        .fontWeight(.semibold)
//                                        .kerning(1)
//                                }
//                                ZStack{
//                                    RoundedRectangle(cornerRadius: 32)
//                                        .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.accent,Color.background3,Color.background1]), startPoint: .top, endPoint: .bottom))
//                                        .frame(width: 190,height: 100)
//                                        .shadow(radius: 4, x: 0, y: 1)
//                                    Text("Couguar")
//                                        .font(.title)
//                                        .foregroundStyle(.backgroundCard)
//                                        .fontWeight(.semibold)
//                                        .kerning(1)
//                                    
//                                }
                            }
                            .padding(.bottom,20)
                            
                        }
                        
                    }
                    
                }
            }
        }
        .onAppear {
            qe.startTimer()
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    InQuizzView(qe: QuestionEngine(),)
}
