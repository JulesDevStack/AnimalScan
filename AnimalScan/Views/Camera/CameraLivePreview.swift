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
    @State private var nextPage: Bool = false
    
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

                VStack(spacing: 0) {
                    Text("Anima Scan")
                        .font(.system(size: 50))
                        .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.foreground1,Color.accent,Color.background3,Color.background2]), startPoint: .top, endPoint: .bottom))
                        .fontWeight(.heavy)
                        .fontDesign(.serif)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.bottom, 6)
                        .background(.ultraThinMaterial.opacity(0.65))
                    
                    Spacer()
                    
                    HStack(spacing: 24) {
                        Button {
                            
                        } label: {
                            Text(Image(systemName: "photo.stack"))
                                .foregroundStyle(.foreground1)
                                .font(.system(size: 24, weight: .medium))
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 12)
                                        .foregroundStyle(.backgroundCard)
                                )
                        }
                        
                        Spacer()
                        
                        Button{
                            cameraManager.capturePhoto()
                        } label: {
                            Circle()
                                .strokeBorder(.background1, lineWidth: 3)
                                .frame(width: 70, height: 70)
                                .overlay {
                                    Circle()
                                        .fill(.background1)
                                        .frame(width: 60, height: 60)
                                }
                        }
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Text(Image(systemName: "clock.arrow.circlepath"))
                                .foregroundStyle(.foreground1)
                                .font(.system(size: 24, weight: .medium))
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 12)
                                        .foregroundStyle(.backgroundCard)
                                )
                        }
                        
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                }
            }
            .onChange(of: cameraManager.capturedImage?.id) { _ in
                if cameraManager.capturedImage != nil {
                    nextPage = true
                }
            }
            .navigationDestination(isPresented: $nextPage, destination: {
                PictureConfirmationView()
                    .environmentObject(cameraManager)
            })
            .onAppear() {
                cameraManager.checkAuthorization()
            }
        }
    }
}



#Preview {
    PictureView()
}
