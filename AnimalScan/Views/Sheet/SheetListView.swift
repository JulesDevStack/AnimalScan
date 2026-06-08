
//
//  SheetListView.swift
//  AnimalScan
//
//  Created by Apprenant 109 on 04/06/2026.
//

import SwiftUI

struct SheetListView: View {
    var body: some View {
        NavigationStack {
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack{
                    Text("Vos cartes")
                        .font(.title)
                        .padding(.top, 20)

                    List(animalSheets){ animalSheet in
                        NavigationLink{
                            FicheView(animalSheet: animalSheet)
                        }label: {
                            SheetRowView(animalSheet: animalSheet)
                        }
                        .listRowBackground(
                            RoundedRectangle(cornerRadius: 16)
                                .fill(.ultraThinMaterial)
                                
                        )
                    }
                    .listRowSpacing(10)

                    .scrollContentBackground(.hidden)
                }
               
                
            }
            
        }
    }
}

struct SheetListView_Previews : PreviewProvider {
    static var previews: some View {
        SheetListView()
    }
}
