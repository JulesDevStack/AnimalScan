//
//  FicheView.swift
//  AnimalScan
//
//  Created by Apprenant 109 on 01/06/2026.
//

import SwiftUI

struct FicheView: View {
    @State private var textContainer: Bool = false
    @State private var isScrolled: Bool = false
    var sheet : Sheet
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                ScrollView{
                    Text("Bravo !")
                        .font(.title)
                    Text("tu as découvert un \(sheet.name)")
                    ZStack{
                        VStack {
                            Image(sheet.image)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(16)
                                .padding(20)
                            HStack {
                                Text(sheet.name)
                                    .font(.title2)
                                    .padding(.horizontal,20)
                                    .padding(.vertical,10)
                                Spacer()
                            }
                            VStack {
                                Text(sheet.description)
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal)
                                    .frame(maxWidth: .infinity,maxHeight: isScrolled ? .infinity : 200, alignment: .leading)
                                Button {
                                    if isScrolled {
                                        isScrolled = false
                                    } else {
                                        isScrolled = true
                                    }
                                } label: {
                                    Image(systemName: isScrolled ? "chevron.up.circle.fill" : "chevron.down.circle.fill")
                                        .foregroundStyle(.black)
                                        .font(.title)
                                }
                                .padding(.bottom, 10)
                            }
                            
                            .padding(.horizontal, 5)
                            
                        }
                        
                        .background(
                            RoundedRectangle(cornerRadius: 16)
                                .fill(.ultraThinMaterial)
                        )
                        .cornerRadius(16)
                        .padding()
                        .shadow(radius: 5)
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
                                                .padding(.horizontal)
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

struct FicheView_Previews : PreviewProvider {
    static var previews: some View {
        FicheView(sheet: Sheet(image: "clap", name: "Django", description: "blabla"))
    }
}
