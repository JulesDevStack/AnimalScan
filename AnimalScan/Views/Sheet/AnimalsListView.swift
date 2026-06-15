
//
//  SheetListView.swift
//  AnimalScan
//
//  Created by Apprenant 109 on 04/06/2026.
//

import SwiftUI




struct AnimalsListView: View {
    var specie: AnimalSpecie
    
    @State var searchValue = ""
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack {
                    Text(specie.name)
                        .font(.system(size: 50))
                        .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.foreground1,Color.accent,Color.background3,Color.background2]), startPoint: .top, endPoint: .bottom))
                        .fontWeight(.heavy)
                        .padding()
                        .fontDesign(.serif)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.foreground1)
                            .font(.title)
                            .padding(.leading)
                        
                        TextField("Chercher un animal", text: $searchValue)
                            .foregroundStyle(.foreground1)
                            .italic()
                        
                        Spacer()
                        
                    }.background(
                        RoundedRectangle(cornerRadius: 32)
                            .frame(height: 45)
                            .foregroundStyle(.backgroundCard)
                            .shadow(radius: 3, x: 0, y: 4)
                    )
                    .padding(.horizontal)
                    
                    ScrollView {
                        LazyVGrid(columns: columns, alignment: .center) {
                            ForEach(specie.animalssheets){ animal in
                                NavigationLink{
                                    DetailedFicheView(animalSheet: animal)
                                }label: {
                                    AnimalCollecCard(animal: animal)
                                }
                            }
                        }
                    }
                    .contentMargins(16, for: .scrollContent)
                    .padding(.vertical)
                }
               
                
            }
            
        }
    }
}

struct AnimalsListView_Previews : PreviewProvider {
    static var previews: some View {
        AnimalsListView(specie: animalSpecies[0])
    }
}
