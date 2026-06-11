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
    
    @State private var showSheet: Bool = false
    
    var animalSheet : AnimalSheet
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 32) {
                    
                    //TITRE PAGE
                    Text(animalSheet.name)
                        .font(.system(size: 50))
                        .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.foreground1,Color.accent,Color.background3,Color.background2]), startPoint: .top, endPoint: .bottom))
                        .fontWeight(.heavy)
                        .padding()
                        .fontDesign(.serif)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    //ANIMAL CARD
                    VStack(spacing: 12) {
                        ZStack(alignment: .topTrailing) {
                            Image(animalSheet.image)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(16)
                            
                            Text(animalSheet.rarity.rawValue)
                                .foregroundStyle(animalSheet.rarityColor)
                                .font(.system(size: 14, weight: .semibold))
                                .padding(.horizontal)
                                .padding(.vertical, 5)
                                .background(
                                    Capsule()
                                        .fill(Color.white.mix(with: animalSheet.rarityColor, by: 0.3).opacity(0.8))
                                        .stroke(animalSheet.rarityColor, lineWidth: 2)
                                )
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding()
                        }
                        
                        VStack(spacing: 16) {
                            HStack(alignment: .center) {
                                Text(animalSheet.scientificName)
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                Spacer()
                                
                                Text(animalSheet.IUCNStatus.rawValue)
                                    .foregroundStyle(animalSheet.IUCNStatusColor.mix(with: Color.black, by: 0.4))
                                    .font(.system(size: 14, weight: .semibold))
                                    .padding(.horizontal)
                                    .padding(.vertical, 5)
                                    .background(
                                        Capsule()
                                            .fill(Color.white.mix(with: animalSheet.IUCNStatusColor, by: 0.3).opacity(0.8))
                                            .stroke(animalSheet.IUCNStatusColor, lineWidth: 2)
                                    )
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            
                            HStack() {
                                VStack() {
                                    Text("Habitat")
                                        .foregroundStyle(Color.black)
                                        .font(.system(size: 14, weight: .regular))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    Text(animalSheet.habitat)
                                        .foregroundStyle(Color.foreground1)
                                        .font(.system(size: 16, weight: .medium))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                }
                                
                                VStack() {
                                    Text("Poids")
                                        .foregroundStyle(Color.black)
                                        .font(.system(size: 14, weight: .regular))
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                    Text(String("\(animalSheet.weight) kg"))
                                        .foregroundStyle(Color.foreground1)
                                        .font(.system(size: 16, weight: .medium))
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                }
                            }
                            
                            
                            Text(animalSheet.description)
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity,maxHeight: isScrolled ? .infinity : 200, alignment: .leading)
                        }
                        
                        if isScrolled {
                            Text(animalSheet.detailedDescription)
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        
                        
                        Button {
                            isScrolled.toggle()
                        } label: {
                            Image(systemName: isScrolled ? "chevron.up.circle.fill" : "chevron.down.circle.fill")
                                .foregroundStyle(.black)
                                .font(.title)
                        }
                        .padding(.bottom, 10)
                        
                        HStack {
                            Text("Scanné le \(animalSheet.discoverDate)")
                                .font(.subheadline)
                            Spacer()
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(.ultraThinMaterial)
                    )
                    .cornerRadius(16)
                    .shadow(radius: 5)
                    
                    //EMERGENCY NUMBERS
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

struct DetailedFicheView_Previews : PreviewProvider {
    static var previews: some View {
//        ScrollView {
            DetailedFicheView(animalSheet: animalSheets[3])
//            DetailedFicheView(animalSheet: animalSheets[1])
//            DetailedFicheView(animalSheet: animalSheets[2])
//            DetailedFicheView(animalSheet: animalSheets[3])
//            DetailedFicheView(animalSheet: animalSheets[4])
//        }
    }
}
