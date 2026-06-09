//
//  HubListRowView.swift
//  AnimalScan
//
//  Created by Apprenant 85 on 04/06/2026.
//

import SwiftUI

//struct HubListRowView: View {
//    @State private var isSaved = false
//    @State private var saves = 0
//    
//    var imageName: String
//    var titleName: String
//    var savingName: String
//    var symbolName: String
//    var levelName: String
//    var coloriconName: Color
//    
//    var body: some View {
//        
//        VStack{
//            
//            ZStack{
//                
//                RoundedRectangle(cornerRadius: 32)
//                    .frame(width: 365, height: 90)
//                    .foregroundStyle(.backgroundCard)
//                
//                HStack{
//                    
//                    Image(imageName)
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                        .frame(width: 150, height: 90)
//                        .clipShape(RoundedRectangle(cornerRadius: 32))
//                        .offset(x:-17 ,y:0)
//                    
//                    
//                    VStack(alignment: .leading){
//                        HStack{
//                            
//                            NavigationLink{
//                              
//                            }label:{
//                                Text(titleName)
//                                    .foregroundStyle(.foreground1)
//                                    .fontWeight(.semibold)
//                                    .font(.headline)
//                                    .padding(.top,2)
//                            }
//                        }
//                        .offset(x: -10,y: -12)
//                        
//                        HStack(spacing: 90){
//                            
//                            HStack{
//                                Image(systemName: symbolName)
//                                    .foregroundStyle(coloriconName)
//                                    .offset(x: -10,y: 15)
//                                Text(levelName)
//                                    .font(.caption2)
//                                    .foregroundStyle(.foreground1)
//                                    .offset(x: -10,y: 15)
//                            }
//                            
//                                Button{
//                                    
//                                    if isSaved {
//                                        saves -= 1
//                                    } else {
//                                        saves += 1
//                                    }
//                                    
//                                    isSaved.toggle()
//                                }label: {
//                                    Image(systemName: isSaved ? "bookmark.fill" : savingName )
//                                        .foregroundStyle(isSaved ? .foreground1 : .foreground1)
//                                        .font(.system(size: 20, weight: .semibold))
//                                        .padding(.top,3)
//                                }
//                            
////                                .offset(x: 70,y: 15)
//                            
//                            
//                        }
//                    }
//                }
//            }
//            
//        }
//
//    }
//}
//
//#Preview {
//    HubListRowView(imageName: "quizz4", titleName: "Passereaux du jardin", savingName: "bookmark", symbolName: "tortoise.fill", levelName: "MOYEN", coloriconName: .teal)
//}
//
