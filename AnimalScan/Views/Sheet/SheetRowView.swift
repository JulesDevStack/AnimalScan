//
//  ShettRowView.swift
//  AnimalScan
//
//  Created by Apprenant 109 on 08/06/2026.
//

import SwiftUI

struct SheetRowView: View {
    var animalSheet: AnimalSheet
    var body: some View {
        HStack{
            Image(animalSheet.image)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 32))
            
            Text(animalSheet.name)
                .font(.headline)
        }
        
    }
}

#Preview {
    SheetRowView(animalSheet: animalSheets[0])
}

