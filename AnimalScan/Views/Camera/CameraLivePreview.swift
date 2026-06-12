//
//  ContentView.swift
//  Cours
//
//  Created by Apprenant 109 on 11/06/2026.
//

import SwiftUI
import AVFoundation
import AVKit

struct CameraLivePreview: View {
    @StateObject private var cameraManager = CameraManager()
    var body: some View {
        ZStack {
            
            if cameraManager.authorizationStatus == .authorized {
                CameraPreview(session: cameraManager.session)
                    .ignoresSafeArea()
            }else {
                VStack {
                    Image(systemName: "camera.fill")
                        .font(.largeTitle)
                        .foregroundStyle(.gray)
                    Text("Camera acess Required")
                        .font(.largeTitle)
                        .foregroundStyle(.gray)
                    
                    if cameraManager.authorizationStatus == .denied {
                        Text("I beg you enable the camera in settings")
                        
                        Button("Open Settings") {
                            if let settingsURL = URL(string: UIApplication.openSettingsURLString){
                                UIApplication.shared.open(settingsURL)
                            }
                        }
                    }
                }
            }
            
            VStack {
                Spacer()
                HStack {
                    Button {
                        
                    } label: {
                        Text("Galerie")
                            .foregroundStyle(.foreground1)
                            .font(.system(size: 24, weight: .medium))
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 18)
                                    .foregroundStyle(.backgroundCard)
                            )
                    }
                    
                    Spacer()

                    Button {
                        cameraManager.capturePhoto()
                    } label: {
                        Circle()
                            .strokeBorder(.white, lineWidth: 3)
                            .frame(width: 70, height: 70)
                            .overlay {
                                Circle()
                                    .fill(.white)
                                    .frame(width: 60, height: 60)
                            }
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Historique")
                            .foregroundStyle(.foreground1)
                            .font(.system(size: 24, weight: .medium))
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 18)
                                    .foregroundStyle(.backgroundCard)
                            )
                    }
                    
                }
                .frame(maxWidth: .infinity)
                
            }
            .sheet(item: $cameraManager.capturedImage) {
                item in
                
                PhotoPreviewView(item: item, onDismiss: {
                    cameraManager.capturedImage = nil
                })
            }
            
        }
        .onAppear() {
            cameraManager.checkAuthorization()
        }
        .padding()
    }
}



#Preview {
    PictureView()
}
