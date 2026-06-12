//
//  PictureConfirmationView.swift
//  AnimalScan
//
//  Created by Apprenant 109 on 02/06/2026.
//

import SwiftUI

struct PictureView: View {
    var body: some View {
        NavigationStack {
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

                    CameraLivePreview()
//                    Image(.dragon)
//                        .resizable()
//                        .scaledToFill()
//                        .frame(maxWidth: 350, maxHeight: 450)
//                        .cornerRadius(20)

                }
                
            }
        }
    }
}

#Preview {
    PictureView()
}
