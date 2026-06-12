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
    
    @State private var showSheet: Bool = false
    
    var animalSheet : AnimalSheet
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 32) {
                    
                    VStack(spacing: 12) {
                        Text("Bravo !")
                            .font(.title)
                        
                        Text("tu as découvert un \(animalSheet.name)")
                    }
                    
                    VStack(spacing: 12) {
                        Image(animalSheet.image)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(16)
                        HStack {
                            Text(animalSheet.name)
                                .font(.title2)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        VStack {
                            Text(animalSheet.description)
                                .multilineTextAlignment(.leading)
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
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(.ultraThinMaterial)
                    )
                    .cornerRadius(16)
                    .shadow(radius: 5)
                    
                    VStack(alignment: .leading,  spacing: 12) {
                        Text("Numéro d'urgence")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack(alignment: .leading, spacing: 12) {
                            PhonePillView(label: "SPA - 3717")
                            PhonePillView(label: "LPO - 3818")
                            PhonePillView(label: "Sauvage Urgence - 06.83.61.42.35")
                        }
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(.ultraThinMaterial)
                    )
                    .cornerRadius(16)
                    .shadow(radius: 5)
                }
                .padding()
            }
        }
    }
}

struct FicheViewPreview : PreviewProvider {
    static var previews: some View {
        FicheView(animalSheet: animalSheets[3])
    }
}
