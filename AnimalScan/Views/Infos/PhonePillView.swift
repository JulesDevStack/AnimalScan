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
                    .foregroundStyle(.foreground1)
                    .font(.system(size: 15.5, weight: .semibold))
                    .padding(.vertical, 9)
                    .padding(.horizontal, 18)
                    .background (
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.backgroundCard.opacity(0.75))
                            .shadow(color: .black.opacity(0.08), radius: 3, x: 0, y: 4)
                    )
            }
        }
    }
}

#Preview {
    PhonePillView(label: "3615 - Pêre noël")
}
