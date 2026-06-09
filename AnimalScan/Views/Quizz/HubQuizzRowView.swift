//
//  HubQuizzRowView.swift
//  AnimalScan
//
//  Created by Apprenant 85 on 04/06/2026.
//

import SwiftUI

struct HubQuizzRowView: View {
    
    @State private var isSaved = false
    @State private var saves = 0
//    @State private var sheets = sheetquizs
    
//    var imageName: String
//    var titleName: String
//    var savingName: String
//    var symbolName: String
//    var levelName: String
//    var coloriconName: Color
    var quizz: Quizz
    
    var body: some View {
        NavigationLink(destination: FicheQuizView(quizz: quizz)) {
            
            VStack{
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 32)
                        .frame(width: 365, height: 90)
                        .foregroundStyle(.backgroundCard)
                    
                    
                        Image(quizz.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 90)
                            .clipShape(RoundedRectangle(cornerRadius: 32))
                            .padding(.trailing,220)
                           
                    
                        VStack(alignment: .center){
                            
                            HStack{
                              
                                Text(quizz.name)
                                    .foregroundStyle(.foreground1)
                                    .fontWeight(.semibold)
                                    .font(.headline)
                                    .padding(.bottom,20)
                                
                            }
                            .padding(.leading,130)
                            
                            
                            HStack(spacing: 90){
                                
                                HStack{
                                    Image(systemName: quizz.symbol)
                                        .foregroundStyle(quizz.coloricon)
                                        
                                    Text(quizz.level)
                                        .font(.caption2)
                                        .foregroundStyle(.foreground1)
                                        
                                }
                                .padding(.leading,130)
                                .padding(.top,4)
                                
                                Button{
                                    
                                    if isSaved {
                                        saves -= 1
                                    } else {
                                        saves += 1
                                    }
                                    
                                    isSaved.toggle()
                                }label: {
                                    Image(systemName: isSaved ? "bookmark.fill" : quizz.saving )
                                        .foregroundStyle(isSaved ? .foreground1 : .foreground1)
                                        .font(.system(size: 20, weight: .semibold))
                                        .padding(.top,4)
                                }
                                
                                //                                .offset(x: 70,y: 15)
                                
                                
                            }
                        }
                    
                }
                
            }
        }
    }
}

#Preview {
    HubQuizzRowView(quizz: quizzs[0])
}
