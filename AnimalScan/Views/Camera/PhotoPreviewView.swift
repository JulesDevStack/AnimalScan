//
//  PhotoPreviewView.swift
//  Cours
//
//  Created by Apprenant 109 on 11/06/2026.
//

import SwiftUI
import AVFoundation

struct PhotoPreviewView: View {
    let item: IdentifiableImage
    let onDismiss: () -> Void
    
    var body: some View {
        VStack{
            HStack{
                Button("Retake"){
                    onDismiss()
                }
                .padding()
                
                Spacer()
                
                Button("Save") {
                    UIImageWriteToSavedPhotosAlbum(item.image, nil, nil, nil)
                    onDismiss()
                }
            }
            
            .background(.ultraThinMaterial)
            
            Image(uiImage: item.image)
                .resizable()
                .scaledToFit()
            
            Spacer()
        }
    }
}
