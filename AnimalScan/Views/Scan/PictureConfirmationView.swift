//
//  PictureConfirmationView.swift
//  AnimalScan
//
//  Created by Apprenant 109 on 02/06/2026.
//

import SwiftUI

struct PictureConfirmationView: View {
    @EnvironmentObject var cameraManager: CameraManager
    
    var animalSheet : AnimalSheet = animalSheets[Int.random(in: 0..<animalSheets.count)]
    
    var capturedImage: IdentifiableImage? {
        cameraManager.capturedImage
    }
    
    
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

                VStack(alignment: .leading, spacing: 16) {
                    if cameraManager.capturedImage?.id != nil {
                        Image(uiImage: capturedImage!.image)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity)
                            .cornerRadius(20)
                    }
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Animal détecté")
                                .foregroundStyle(.foreground1)
                                .font(.system(size: 18, weight: .semibold))
                            Text("\(animalSheet.name)")
                                .font(.system(size: 24, weight: .semibold))
                        }
                        Spacer()
                        NavigationLink {
                            DetailedFicheView(animalSheet: animalSheet)
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
                }
                .padding()
            }

    }
}

#Preview {
    PictureConfirmationView().environmentObject(CameraManager())
}
