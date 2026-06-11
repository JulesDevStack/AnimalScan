//
//  FicheView.swift
//  AnimalScan
//
//  Created by Apprenant 109 on 01/06/2026.
//

import SwiftUI

struct DetailedFicheView: View {
    @State private var textContainer: Bool = false
    @State private var isScrolled: Bool = false
    var animalSheet : AnimalSheet
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                ScrollView {
                    
                    Text("Bravo !")
                        .font(.title)
                    
                    Text("tu as découvert un \(animalSheet.name)")
                    
                    VStack {
                        Image(animalSheet.image)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(16)
                            .padding(20)
                        HStack {
                            Text(animalSheet.name)
                                .font(.title2)
                                .padding(.horizontal,20)
                                .padding(.vertical,10)
                            Spacer()
                        }
                        VStack {
                            Text(animalSheet.description)
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
                    
                    Spacer()
                    
                    VStack {
                        HStack {
                            Text("Numéro d'urgence")
                                .font(.title2)
                                .padding(.horizontal,20)
                                .padding(.vertical,10)
                            
                            Spacer()
                        }
                        
                        VStack(alignment: .leading, spacing: 12) {
                            PhonePillView(label: "SPA - 3717")
                            PhonePillView(label: "LPO - 3818")
                            PhonePillView(label: "Sauvage Urgence - 06.83.61.42.35")
                        }
                    }
                    
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(.ultraThinMaterial)
                    )
                    .cornerRadius(16)
                    .padding()
                    .shadow(radius: 10)
        
                    Spacer()
                }
            }
        }
    }
}

struct DetailedFicheView_Previews : PreviewProvider {
    static var previews: some View {
        DetailedFicheView(animalSheet: animalSheets.randomElement()!)
    }
}
