//
//  AnimalCollecCard.swift
//  AnimalScan
//
//  Created by Jules Liegeois on 15/06/2026.
//

import SwiftUI

struct AnimalCollecCard: View {
    let animal : AnimalSheet
    
    var body: some View {
        VStack(spacing: 0) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: 160)
                .clipped()
                .clipShape(
                    RoundedRectangle(cornerRadius: 18)
                )
            
            HStack {
                VStack(spacing: 6) {
                    Text(animal.name)
                        .font(.title2)
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("\(String(animal.weight)) kg")
                        .font(.caption)
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    if Bool.random(){
                        Text("Scanné le \r\(animal.discoverDate)")
                            .font(.system(size: 12, weight: .regular))
                            .foregroundColor(.black.opacity(0.7))
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                Spacer()
                Image(systemName: "chevron.right")
                    .font(.title3)
                    .fontWeight(.semibold)
            }
            .padding()
            
        }
        .padding(5)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(.backgroundCard)
        .cornerRadius(20)
    }
}
