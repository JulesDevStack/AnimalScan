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
                    
                    List(sheets){ sheet in
                        NavigationLink{
                            FicheView(sheet: sheet)
                        }label: {
                            HStack{
                                Image(sheet.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 80, height: 80)
                                    .clipShape(RoundedRectangle(cornerRadius: 32))
                                
                                Text(sheet.name)
                                    .font(.headline)
                            }
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
