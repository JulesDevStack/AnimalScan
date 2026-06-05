//
//  PictureConfirmationView.swift
//  AnimalScan
//
//  Created by Apprenant 109 on 02/06/2026.
//

import SwiftUI

struct PictureView: View {
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
                Text("Prendre une photo ?")
                    .font(.largeTitle)

                Image(.dragon)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: 350, maxHeight: 450)
                    .cornerRadius(20)

                HStack(spacing: 25) {

                    Button {
                        
                    } label: {
                        Text("Galerie")
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
            
        }
    }
}

#Preview {
    PictureView()
}
