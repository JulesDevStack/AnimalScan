//
//  PictureConfirmationView.swift
//  AnimalScan
//
//  Created by Apprenant 109 on 02/06/2026.
//

import SwiftUI

struct PictureConfirmationView: View {
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

            VStack(spacing: 25) {

                HStack {
                    Button {

                    } label: {
                        Image(systemName: "arrow.uturn.backward")
                            .font(.title2)
                            .foregroundStyle(.primary)
                    }

                    Spacer()
                }

                Text("Valider la photo ?")
                    .font(.largeTitle)

                Image(.dragon)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 250, maxHeight: 320)
                    .cornerRadius(20)

                HStack(spacing: 25) {

                    Button {
                        
                    } label: {
                        Text("Annuler")
                            .foregroundStyle(.foreground1)
                            .font(.system(size: 24, weight: .medium))
                            .frame(width: 140, height: 75)
                            .background(
                                RoundedRectangle(cornerRadius: 18)
                                    .foregroundStyle(.backgroundCard)
                            )
                    }

                    Button {

                    } label: {
                        Text("Confirmer")
                            .foregroundStyle(.foreground1)
                            .font(.system(size: 24, weight: .medium))
                            .frame(width: 140, height: 75)
                            .background(
                                RoundedRectangle(cornerRadius: 18)
                                    .foregroundStyle(.backgroundCard)
                            )
                    }
                }
            }
            .padding(30)
            .background(
                RoundedRectangle(cornerRadius: 24)
                    .fill(.ultraThinMaterial)
            )
            .shadow(radius: 10)
            .padding()
        }
    }
}

#Preview {
    PictureConfirmationView()
}
