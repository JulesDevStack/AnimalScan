//
//  PhonePill.swift
//  AnimalScan
//
//  Created by Apprenant 109 on 11/06/2026.
//

import SwiftUI

struct PhonePillView: View {
    let label: String
    
    var body: some View {
        Button {
            
        } label: {
            VStack {
                Text(label)
                    .foregroundStyle(Color(red: 0.149, green: 0.149, blue: 0.149))
                    .font(.system(size: 15.5, weight: .medium))
                    .padding(.vertical, 9)
                    .padding(.horizontal, 18)
                    .background (
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white.opacity(0.75))
                            .shadow(color: .black.opacity(0.08), radius: 3, x: 0, y: 4)
                    )
            }
        }
    }
}
