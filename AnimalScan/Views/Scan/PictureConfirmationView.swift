//
//  PictureConfirmationView.swift
//  AnimalScan
//
//  Created by Apprenant 109 on 02/06/2026.
//

import SwiftUI

struct PictureConfirmationView: View {
    var animalSheet : AnimalSheet = animalSheets[3]
    var body: some View {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color.background1,
                        Color.background2,
                        Color.background3
                    ]),
                    startPoint: .topLeading,
                    endPoint: .bottom
                )
                .ignoresSafeArea()

                VStack {
                    Image("profil")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                        .cornerRadius(20)

                    Spacer()
                    
                    Text("Animal détecté : \(animalSheet.name)")
                        .foregroundStyle(.foreground)
                        .font(.system(size: 22, weight: .semibold))
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding()
                    
                    Spacer()
                    
                    NavigationLink {
                        FicheView(animalSheet: animalSheets[3])
                    } label: {
                        Text("Confirmer")
                            .foregroundStyle(.foreground1)
                            .font(.system(size: 24, weight: .medium))
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 18)
                                    .foregroundStyle(.backgroundCard)
                            )
                    }
                }
                .padding()
            }

    }
}

#Preview {
    NavigationStack{
        PictureConfirmationView()

    }
}
