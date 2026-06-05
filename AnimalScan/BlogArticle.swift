//
//  BlogArticle.swift
//  AnimalScan
//
//  Created by Jules Liegeois on 03/06/2026.
//

import SwiftUI

struct BlogArticle: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                ZStack(alignment: .bottom) {
                    Image("cnard2")
                        .resizable()
                        .scaledToFill()
                        .frame(width: .infinity, height: 300)
                    HStack {
                        Image(systemName: "arrowshape.backward.circle")
                            .foregroundStyle(.white)
                            .font(.system(size: 54))
                        Spacer()
                        Image(systemName: "house.circle")
                            .foregroundStyle(.white)
                            .font(.system(size: 54))
                    }
                    .padding(40)
                    .frame(width: .infinity, height: 300, alignment: .top)
                    Text("Est-ce que les canards volent ?")
                        .font(.system(size: 22, weight: .bold))
                        .foregroundStyle(.background1)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.ultraThinMaterial.opacity(0.65))
                }
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading) {
                        Text("Canards sauvages : Maîtres du ciel")
                            .font(.title)
                            .foregroundStyle(.foreground1)
                            .padding(.bottom)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("Cat ipsum dolor sit amet, terrorize the hundred-and-twenty-pound rottweiler and steal his bed, not sorry. Play with twist ties open the door, let me out, let me out, let me-out, let me-aow, let meaow, meaow! for dream about hunting birds throw down all the stuff in the kitchen sleep.")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundStyle(.foreground1)
                            .padding(.bottom)
                        Text("Hate dogs pee in the shoe or kitty time. Swipe at owner's legs meowsiers and your pillow is now my pet bed. Milk the cow i like big cats and i can not lie but instantly break out into full speed gallop across the house for no reason for ooooh feather moving feather!.")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundStyle(.foreground1)
                            .padding(.bottom)
                        Text("Paw at your fat belly cat milk copy park pee walk owner escape bored tired cage droppings sick vet vomit i show my fluffy belly but it's a trap! if you pet it i will tear up your hand for prance along on top of the garden fence, annoy the neighbor's dog and make it bark. I want to go outside let me go outside nevermind inside is better mess up all the toilet paper the fat cat sat on the mat bat away with paws. There's a forty year old lady there let us feast sleep on dog bed, force dog to sleep on floor yet stare at guinea pigs don't nosh on the birds. Human is in bath tub, emergency! drowning! meooowww! bleghbleghvomit my furball really tie the room together.")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundStyle(.foreground1)
                            .padding(.bottom)
                        
                        HStack {
                            Button {
                                
                            } label: {
                                HStack {
                                    Text("Est ce que les pandas peuvent se faire en tombant ? ")
                                        .multilineTextAlignment(.leading)
                                    
                                    Image(systemName: "chevron.right")
                                        .font(.system(size: 32))
                                        .padding(.leading)
                                }
                                .foregroundStyle(.foreground1)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(.ultraThinMaterial)
                                        .shadow(color: .black.opacity(0.5), radius: 3, x: 3, y: 4)
                                )
                            }
                        }
                    }
                }
                .padding()
                .contentMargins(16, for: .scrollContent)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    BlogArticle()
}
