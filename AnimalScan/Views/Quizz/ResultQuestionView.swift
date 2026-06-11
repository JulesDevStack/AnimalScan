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
                
               
                
                //                Si c'est la dernière question -> WinView
                
                if qe.allDone() {
                    NavigationLink(destination: WinView(qe: qe).onAppear()){
                     Text("Résultat")
                    }
                    
                    //                    sinon -> nextQuestion
                    
                } else if isCorrect{
                        NavigationLink(destination: InQuizzView(qe: qe).onAppear(){ qe.nextQuestion()}){
                            
                            Text ("-> continuez ici <-")
                                .font(.title)
                                .fontWeight(.bold)
                        }
                      
                        
                    } else {
                        Text("Mauvaise réponse :(")
                        NavigationLink(destination: InQuizzView(qe: qe).onAppear(){ qe.nextQuestion()}){
                            
                            Text ("-> continuez ici <-")
                                .font(.title)
                                .fontWeight(.bold)
                        }
                    }
                    
                
                
            }
            
        }.navigationBarBackButtonHidden()
    }
    
}


#Preview {
    ResultQuestionView(qe: QuestionEngine(), isCorrect: false)
}
