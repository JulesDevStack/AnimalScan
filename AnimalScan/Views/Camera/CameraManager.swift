//
//  CameraManager.swift
//  Cours
//
//  Created by Apprenant 109 on 11/06/2026.
//

import AVFoundation
import SwiftUI
import Combine

class CameraManager: NSObject, ObservableObject, AVCapturePhotoCaptureDelegate {
    
    @Published var capturedImage : IdentifiableImage?
    @Published var isSessionRunning = false
    @Published var authorizationStatus : AVAuthorizationStatus = .notDetermined
    
    // AVFoundation components
    
    let session = AVCaptureSession()
    
    private let photoOutput = AVCapturePhotoOutput()
    private let videoOutput = AVCaptureMovieFileOutput()
    private var currentInput: AVCaptureDeviceInput?
    
    private let sessionQueu = DispatchQueue(label: "com.customcamera.sessionQueue")
    
    override init() {
        super.init()
    }
    
    func checkAuthorization() {
        switch AVCaptureDevice.authorizationStatus(for: .video){
        case.authorized:
            authorizationStatus = .authorized
            setupSession()
        case .notDetermined:
            authorizationStatus = .notDetermined
            AVCaptureDevice.requestAccess(for: .video) { [weak self] granted in
                DispatchQueue.main.async{
                    self?.authorizationStatus = granted ? .authorized : .denied
                    if granted {
                        self?.setupSession()
                    }
                }
            }
        case .denied, .restricted:
            authorizationStatus = .denied
            
        @unknown default:
            authorizationStatus = .denied
        }
    }
    
    // Config avsetup
    
    private func setupSession() {
        sessionQueu.async {
            [weak self] in
            guard let self = self else { return }
            
            //set session preset
            self.session.beginConfiguration()
            self.session.sessionPreset = .photo
            
            // camera input
            
            guard let camera = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .back), let input = try? AVCaptureDeviceInput(device: camera) else {
                print("Failed Session")
                self.session.commitConfiguration()
                return
            }
            
            if self.session.canAddInput(input) {
                self.session.addInput(input)
                self.currentInput = input
            }
            
            // add photo output
            
            if self.session.canAddOutput(self.photoOutput){
                self.session.addOutput(self.photoOutput)
                
                self.photoOutput.isHighResolutionCaptureEnabled = true
                self.photoOutput.maxPhotoQualityPrioritization = .quality
            }
            
            self.session.commitConfiguration()
                
            // start the session
            
            self.session.startRunning()
            
        
            DispatchQueue.main.async {
                self.isSessionRunning = self.session.isRunning
            }
        }
    }
    
    
    
    func capturePhoto() {
        sessionQueu.async {
            [weak self] in
            guard let self = self else { return }
            
            // config photo settings
            let settings = AVCapturePhotoSettings()
            settings.flashMode = .auto
            
            // enable his res capture
            
            if self.photoOutput.isHighResolutionCaptureEnabled {
                settings.isHighResolutionPhotoEnabled = true
            }
            self.photoOutput.capturePhoto(with: settings, delegate: self)
        }
    }
    
    func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
        if let error = error {
            print("Photo capture error \(error.localizedDescription)")
            return
        }
        
        // extract image data
        guard let imageData = photo.fileDataRepresentation(),
              let uiImage = UIImage(data: imageData) else {
            print("failed to convert photo to image")
            return
        }
        //update UI on main thread
        DispatchQueue.main.async {
            [weak self] in
            self?.capturedImage = IdentifiableImage(image: uiImage)
        }
        
    }
    
}



struct IdentifiableImage: Identifiable {
    let id = UUID()
    let image: UIImage
}

