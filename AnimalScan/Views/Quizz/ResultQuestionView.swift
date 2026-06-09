//
//  ResultQuestionView.swift
//  AnimalScan
//
//  Created by Apprenant 85 on 08/06/2026.
//

import SwiftUI

struct ResultQuestionView: View {
    @ObservedObject var qe: QuestionEngine
    var isCorrect : Bool
    
    var body: some View {
        NavigationStack{
            VStack{
//                Si la réponse est correcte -> Question suivante
                
                if isCorrect{
                    NavigationLink(destination: InQuizzView(qe: qe).onAppear(){ qe.nextQuestion()}){
                        
                        Text ("Bravo ! -> continuez ici <-")
                    }
//                    sinon -> DefeatView + nextQuestion
                    
                } else {
                 Text("Mauvaise réponse :(")
                    }
                    
//                Si c'est la dernière question -> WinView
                
                if qe.allDone() {
                    Text("Vous avez terminé !")
                    
//                    sinon -> nextQuestion
                    
                } else {
                    NavigationLink(destination: InQuizzView(qe: qe).onAppear(){ qe.nextQuestion()}){
                        
                                    }
                    .simultaneousGesture(TapGesture().onEnded {
                        qe.nextQuestion()
                    })
                                }
                
                }
            }.navigationBarBackButtonHidden()
         }
        
    }


#Preview {
    ResultQuestionView(qe: QuestionEngine(), isCorrect: true)
}
