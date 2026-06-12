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
            CameraLivePreview()
        }
    }
}

#Preview {
    PictureView()
}
