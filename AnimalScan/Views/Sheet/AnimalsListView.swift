
//
//  SheetListView.swift
//  AnimalScan
//
//  Created by Apprenant 109 on 04/06/2026.
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
                    UnevenRoundedRectangle(topLeadingRadius: 20, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 20)
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
                }
                Spacer()
                Image(systemName: "chevron.right")
                    .fontWeight(.semibold)
            }
            .padding()
            
        }
        .frame(maxWidth: .infinity)
        .background(.backgroundCard.mix(with: .white, by: 0.2))
        .cornerRadius(20)
    }
}

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
                        LazyVGrid(columns: columns) {
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
