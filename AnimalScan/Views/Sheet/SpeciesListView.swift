
//
//  SheetListView.swift
//  AnimalScan
//
//  Created by Apprenant 109 on 04/06/2026.
//

import SwiftUI

struct SpeciesListView: View {
    var speciesList : [AnimalSpecie]
    var body: some View {
        NavigationStack {
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack{
                    Text("Vos cartes")
                        .font(.title)
                        .padding(.top, 20)

                    List(speciesList){ specie in
                        NavigationLink{
                            AnimalsListView(animalssheets: specie.animalssheets)
                        }label: {
                            HStack{
                                Image(specie.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 80, height: 80)
                                    .clipShape(RoundedRectangle(cornerRadius: 32))
                                
                                Text(specie.name)
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

struct SpeciesListView_Previews : PreviewProvider {
    static var previews: some View {
        SpeciesListView(speciesList: animalSpecies)
    }
}
