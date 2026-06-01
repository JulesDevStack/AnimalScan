//
//  FicheView.swift
//  AnimalScan
//
//  Created by Apprenant 109 on 01/06/2026.
//

import SwiftUI

struct FicheView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                ScrollView{
                    Text("Bravo !")
                        .font(.title)
                    Text("tu as découvert un dragon")
                    ZStack{
                        VStack {
                            Image(.dragon)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(16)
                                .padding(20)
                            
                            HStack {
                                Text("Dragon Bleu")
                                    .font(.title2)
                                    .padding(.horizontal,20)
                                    .padding(.vertical,10)
                                
                                Spacer()
                                
                            }
                            ScrollView{
                                
                            }
                            HStack{
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci ")
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 20)
                                    .padding(.vertical, 10)
                                
                            }
                            
                            
                            
                        }
                        
                        .background(
                            RoundedRectangle(cornerRadius: 16)
                                .fill(.ultraThinMaterial)
                        )
                        .cornerRadius(16)
                        .padding()
                        .shadow(radius: 10)
                    }
                    
                    
                    ZStack{
                        
                    }
                    Spacer()
                    
                    
                    ZStack{
                        VStack {
                            HStack {
                                Text("Numéro d'urgence")
                                    .font(.title2)
                                    .padding(.horizontal,20)
                                    .padding(.vertical,10)
                                
                                Spacer()
                            }
                            HStack{
                                Button {
                                    
                                } label: {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 32)
                                            .foregroundStyle(.backgroundCard)
                                            .shadow(radius: 3, x: 0, y: 4)
                                        HStack{
                                            Text("SPA - 3717")
                                                .foregroundStyle(.foreground1)
                                                .font(.system(size: 24, weight: .semibold))
                                                .padding(.horizontal ,10)
                                            Spacer()
                                        }
                                    }
                                }
                            }
                            .padding(10)
                            
                            HStack{
                                Button {
                                    
                                } label: {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 32)
                                            .foregroundStyle(.backgroundCard)
                                            .shadow(radius: 3, x: 0, y: 4)
                                        HStack{
                                            Text("SPA - 3717")
                                                .foregroundStyle(.foreground1)
                                                .font(.system(size: 24, weight: .semibold))
                                                .padding(.horizontal ,10)
                                            Spacer()
                                        }
                                    }
                                }
                            }
                            .padding(10)
                            HStack{
                                Button {
                                    
                                } label: {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 32)
                                            .foregroundStyle(.backgroundCard)
                                            .shadow(radius: 3, x: 0, y: 4)
                                        HStack{
                                            Text("SPA - 3717")
                                                .foregroundStyle(.foreground1)
                                                .font(.system(size: 24, weight: .semibold))
                                                .padding(.horizontal ,10)
                                            Spacer()
                                        }
                                    }
                                }
                            }
                            .padding(10)
                            
                        }
                        
                        .background(
                            RoundedRectangle(cornerRadius: 16)
                                .fill(.ultraThinMaterial)
                        )
                        .cornerRadius(16)
                        .padding()
                        .shadow(radius: 10)
                    }
                    
                    
                    ZStack{
                        
                    }
                    Spacer()
                    
                }
            }
        }
        
    }
}

#Preview {
    FicheView()
}
