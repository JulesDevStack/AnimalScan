//
//  DefeatView.swift
//  AnimalScan
//
//  Created by Apprenant 85 on 02/06/2026.
//

import SwiftUI

struct DefeatView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    DefeatView()
}
