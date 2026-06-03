//
//  CountdownView.swift
//  AnimalScan
//
//  Created by Apprenant 85 on 02/06/2026.
//

import SwiftUI

struct CountdownView: View {
    
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                .ignoresSafeArea()
            
            Circle()
                .stroke(lineWidth: 12)
                .fill(LinearGradient(gradient: Gradient(colors: [Color.backgroundCard,Color.accent]), startPoint: .bottomLeading, endPoint: .topLeading))
                .frame(width: 300)
            
            Text(
                timerInterval: Date.now...Date(timeInterval: 3, since: .now),
                pauseTime: nil,
                countsDown: true,
                showsHours: false
                    )
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundStyle(.accent)
            .kerning(3)
            
            
        }
    }
}

#Preview {
    CountdownView()
}
