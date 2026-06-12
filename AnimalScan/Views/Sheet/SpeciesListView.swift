
//
//  SheetListView.swift
//  AnimalScan
//
//  Created by Apprenant 109 on 04/06/2026.
//

import SwiftUI

struct SpecieCollecCard: View {
    let specie : AnimalSpecie
    
    var body: some View {
        HStack(spacing: 0) {
            Image(specie.image)
                .resizable()
                .scaledToFill()
                .frame(width: 120)
                .clipShape(
                    RoundedRectangle(cornerRadius: 18)
                )
            
            VStack(spacing: 6) {
                Text(specie.name)
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                if Bool.random() {
                    Text("\(Int.random(in: 1...6)) espèces enregistrées")
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .foregroundColor(.black.opacity(0.7))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
            Image(systemName: "chevron.right")
                .fontWeight(.semibold)
                .padding(.trailing)
            
        }
        .padding(5)
        .background(
            UnevenRoundedRectangle(topLeadingRadius: 20, bottomLeadingRadius: 20, bottomTrailingRadius: 20, topTrailingRadius: 20)
                .fill(.backgroundCard)
        )
        .frame(maxWidth: .infinity)
    }
}

struct SpeciesListView: View {
    var speciesList : [AnimalSpecie] = animalSpecies
    
    @State var searchValue : String = ""
    @State var selfUser: User = User(username: "Jules", score: 2000, weeklyScore: 2000, avatar: "avatar")
       
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Familles")
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
                        
                        TextField("Chercher une famille", text: $searchValue)
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
                        ForEach(speciesList){ specie in
                            NavigationLink{
                                AnimalsListView(specie: specie)
                            }label: {
                                SpecieCollecCard(specie: specie)
                            }
                            .listRowBackground(
                                RoundedRectangle(cornerRadius: 16)
                                    .fill(.ultraThinMaterial)
                                    
                            )
                        }
                    }
                    .contentMargins(16, for: .scrollContent)
                    .padding(.vertical)
                }
               
                
            }
            
        }
    }
}

struct SpeciesListView_Previews : PreviewProvider {
    static var previews: some View {
        SpeciesListView()
    }
}
