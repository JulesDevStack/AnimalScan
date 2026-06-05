//
//  HubQuizView.swift
//  AnimalScan
//
//  Created by Apprenant 85 on 01/06/2026.
//

import SwiftUI

struct HubQuizView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack{
                    
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 32)
                            .frame(width: 360, height: 45)
                            .foregroundStyle(.backgroundCard)
                            .shadow(radius: 3, x: 0, y: 4)
                        
                        HStack{
                            
                            Image(systemName: "magnifyingglass")
                                .foregroundStyle(.foreground1)
                                .font(.title)
                            
                            Text("Chercher un thème")
                                .foregroundStyle(.foreground1)
                                .italic()
                            Spacer()
                            
                        }.padding(35)
                        
                    }
                    
                    HStack{
                        Button{
                            
                        }label:{
                            ZStack{
                                UnevenRoundedRectangle(topLeadingRadius: 32, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 32)
                                    .frame(width: 178, height: 72)
                                    .foregroundStyle(LinearGradient(colors: [Color.accent, Color.accent.opacity(0)], startPoint: .top, endPoint: .bottom))
                                
                                HStack{
                                    Image(systemName: "puzzlepiece.fill")
                                        .foregroundStyle(.backgroundCard)
                                    
                                    Text ("Mini-jeux")
                                        .foregroundStyle(.backgroundCard)
                                        .kerning(1)
                                        .padding(5)
                                }
                            }
                        }
                        
                        
                        NavigationLink{
                            RankingView()
                        }label:{
                            ZStack{
                                UnevenRoundedRectangle(topLeadingRadius: 32, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 32)
                                    .frame(width: 178, height: 60)
                                    .foregroundStyle(LinearGradient(colors: [Color.backgroundCard, Color.backgroundCard], startPoint: .top, endPoint: .bottom))
                                
                                
                                HStack{
                                    Image(systemName: "crown.fill")
                                        .foregroundStyle(.accent)
                                    
                                    Text ("Classement")
                                        .foregroundStyle(.accent)
                                        .kerning(1)
                                        .padding(5)
                                }
                            }
                        }
                        
                    }
                    
                    
                    
                    VStack(alignment: .leading){
                        HStack{
                            
                            Text("QUIZZ")
                                .font(.title)
                                .foregroundStyle(.foreground1)
                                .kerning(3)
                            Spacer()
                            
                            Button(action: {
                                // Your code here
                            }) {
                                Image(systemName: "slider.horizontal.3")
                                    .padding(6)
                                    .font(.title2)
                                    .foregroundStyle(.foreground1)
                                    .background(.backgroundCard)
                                    .cornerRadius(150)
                            }
                        }
                        Text("________________________________________")
                            .font(.callout)
                            .foregroundStyle(.foreground1)
                            .fontWeight(.bold)
                        
                        
                        
                    }
                    .padding(.horizontal)
                    Spacer()
                    
                    ScrollView{
                        ForEach(quizzs){quizz in
                            HubQuizzRowView(imageName: quizz.image, titleName: quizz.name, savingName: quizz.saving, symbolName: quizz.symbol, levelName: quizz.level, coloriconName: quizz.coloricon)
                        }
                        //                        VStack{
                        //                            ZStack{
                        //                                
                        //                                RoundedRectangle(cornerRadius: 32)
                        //                                    .frame(width: 365, height: 90)
                        //                                    .foregroundStyle(.backgroundCard)
                        //                                
                        //                                HStack{
                        //                                    
                        //                                    Image("quizz1")
                        //                                        .resizable()
                        //                                        .aspectRatio(contentMode: .fill)
                        //                                        .frame(width: 150, height: 90)
                        //                                        .clipShape(RoundedRectangle(cornerRadius: 32))
                        //                                    
                        //                                    
                        //                                    VStack{
                        //                                        HStack{
                        //                                            Text("Reconnaître les Félins ")
                        //                                                .foregroundStyle(.foreground1)
                        //                                                .fontWeight(.semibold)
                        //                                                .font(.subheadline)
                        //                                                .padding(.top)
                        //                                            
                        //                                            Image(systemName: "bookmark.fill")
                        //                                                .foregroundStyle(.foreground1)
                        //                                                .padding(.trailing)
                        //                                            
                        //                                        }
                        //                                        
                        //                                        Spacer()
                        //                                        
                        //                                        HStack{
                        //                                            
                        //                                            Image(systemName: "leaf.fill")
                        //                                                .foregroundStyle(.mint.secondary)
                        //                                            Text("FACILE")
                        //                                                .font(.caption2)
                        //                                                .foregroundStyle(.foreground1)
                        //                                            Spacer()
                        //                                            
                        //                                        }.padding(.leading)
                        //                                    }
                        //                                }.padding(.horizontal)
                        //                            }
                        //                            ZStack{
                        //                                
                        //                                RoundedRectangle(cornerRadius: 32)
                        //                                    .frame(width: 365, height: 90)
                        //                                    .foregroundStyle(.backgroundCard)
                        //                                
                        //                                HStack{
                        //                                    
                        //                                    Image("quizz2")
                        //                                        .resizable()
                        //                                        .aspectRatio(contentMode: .fill)
                        //                                        .frame(width: 150, height: 90)
                        //                                        .clipShape(RoundedRectangle(cornerRadius: 32))
                        //                                    
                        //                                    
                        //                                    VStack{
                        //                                        HStack{
                        //                                            Text("Familles d'Arthropode")
                        //                                                .foregroundStyle(.foreground1)
                        //                                                .fontWeight(.semibold)
                        //                                                .font(.subheadline)
                        //                                                .padding(.top)
                        //                                            
                        //                                            Image(systemName: "bookmark")
                        //                                                .foregroundStyle(.foreground1)
                        //                                                .padding(.trailing)
                        //                                            
                        //                                        }
                        //                                        
                        //                                        Spacer()
                        //                                        
                        //                                        HStack{
                        //                                            
                        //                                            Image(systemName: "tortoise.fill")
                        //                                                .foregroundStyle(.link.secondary)
                        //                                            Text("MOYEN")
                        //                                                .font(.caption2)
                        //                                                .foregroundStyle(.foreground1)
                        //                                            Spacer()
                        //                                            
                        //                                        }.padding(.leading)
                        //                                    }
                        //                                }.padding(.horizontal)
                        //                            }
                        //                            ZStack{
                        //                                
                        //                                RoundedRectangle(cornerRadius: 32)
                        //                                    .frame(width: 365, height: 90)
                        //                                    .foregroundStyle(.backgroundCard)
                        //                                
                        //                                HStack{
                        //                                    
                        //                                    Image("quizz3")
                        //                                        .resizable()
                        //                                        .aspectRatio(contentMode: .fill)
                        //                                        .frame(width: 150, height: 90)
                        //                                        .clipShape(RoundedRectangle(cornerRadius: 32))
                        //                                    
                        //                                    
                        //                                    VStack{
                        //                                        HStack{
                        //                                            Text("À qui sont ces yeux ? ")
                        //                                                .foregroundStyle(.foreground1)
                        //                                                .fontWeight(.semibold)
                        //                                                .font(.subheadline)
                        //                                                .padding(.top)
                        //                                            
                        //                                            Image(systemName: "bookmark")
                        //                                                .foregroundStyle(.foreground1)
                        //                                                .padding(.trailing)
                        //                                            
                        //                                        }
                        //                                        
                        //                                        Spacer()
                        //                                        
                        //                                        HStack{
                        //                                            
                        //                                            Image(systemName: "hare.fill")
                        //                                                .foregroundStyle(.indigo.secondary)
                        //                                            Text("DIFFICILE")
                        //                                                .font(.caption2)
                        //                                                .foregroundStyle(.foreground1)
                        //                                            Spacer()
                        //                                            
                        //                                        }.padding(.leading)
                        //                                    }
                        //                                }.padding(.horizontal)
                        //                            }
                        //                            
                        //                        }
                        
                    }
                    VStack(alignment: .leading){
                        HStack{
                            
                            Text("LISTES")
                                .font(.title)
                                .foregroundStyle(.foreground1)
                                .kerning(3)
                            Spacer()
                            
                            Button(action: {
                                // Your code here
                            }) {
                                Image(systemName: "slider.horizontal.3")
                                    .padding(6)
                                    .font(.title2)
                                    .foregroundStyle(.foreground1)
                                    .background(.backgroundCard)
                                    .cornerRadius(150)
                            }
                        }
                        Text("________________________________________")
                            .font(.callout)
                            .foregroundStyle(.foreground1)
                            .fontWeight(.bold)
                    }.padding(.horizontal)
                    Spacer()
                    
                    
                    ScrollView{
                        ForEach(quizzs){quizz in
                            HubListRowView(imageName: quizz.image, titleName: quizz.name, savingName: quizz.saving, symbolName: quizz.symbol, levelName: quizz.level, coloriconName: quizz.coloricon)
                        }
                        //                        VStack{
                        //                            ZStack{
                        //                                
                        //                                RoundedRectangle(cornerRadius: 32)
                        //                                    .frame(width: 365, height: 90)
                        //                                    .foregroundStyle(.backgroundCard)
                        //                                
                        //                                HStack{
                        //                                    
                        //                                    Image("quizz4")
                        //                                        .resizable()
                        //                                        .aspectRatio(contentMode: .fill)
                        //                                        .frame(width: 150, height: 90)
                        //                                        .clipShape(RoundedRectangle(cornerRadius: 32))
                        //                                    
                        //                                    
                        //                                    VStack{
                        //                                        HStack{
                        //                                            Text("  Passereaux du jardin ")
                        //                                                .foregroundStyle(.foreground1)
                        //                                                .fontWeight(.semibold)
                        //                                                .font(.subheadline)
                        //                                                .padding(.top)
                        //                                            
                        //                                            Image(systemName: "bookmark")
                        //                                                .foregroundStyle(.foreground1)
                        //                                                .padding(.trailing)
                        //                                            
                        //                                        }
                        //                                        
                        //                                        Spacer()
                        //                                        
                        //                                        HStack{
                        //                                            
                        //                                            Image(systemName: "tortoise.fill")
                        //                                                .foregroundStyle(.link.secondary)
                        //                                            Text("MOYEN")
                        //                                                .font(.caption2)
                        //                                                .foregroundStyle(.foreground1)
                        //                                            Spacer()
                        //                                            
                        //                                        }.padding(.leading)
                        //                                    }
                        //                                }.padding(.horizontal)
                        //                            }
                        //                            ZStack{
                        //                                
                        //                                RoundedRectangle(cornerRadius: 32)
                        //                                    .frame(width: 365, height: 90)
                        //                                    .foregroundStyle(.backgroundCard)
                        //                                
                        //                                HStack{
                        //                                    
                        //                                    Image("quizz5")
                        //                                        .resizable()
                        //                                        .aspectRatio(contentMode: .fill)
                        //                                        .frame(width: 150, height: 90)
                        //                                        .clipShape(RoundedRectangle(cornerRadius: 32))
                        //                                    
                        //                                    
                        //                                    VStack{
                        //                                        HStack{
                        //                                            Text("   Animaux en R             ")
                        //                                                .foregroundStyle(.foreground1)
                        //                                                .fontWeight(.semibold)
                        //                                                .font(.subheadline)
                        //                                                .padding(.top)
                        //                                            
                        //                                            Image(systemName: "bookmark")
                        //                                                .foregroundStyle(.foreground1)
                        //                                                .padding(.trailing)
                        //                                            
                        //                                        }
                        //                                        
                        //                                        Spacer()
                        //                                        
                        //                                        HStack{
                        //                                            
                        //                                            Image(systemName: "hare.fill")
                        //                                                .foregroundStyle(.indigo.secondary)
                        //                                            Text("DIFFICILE")
                        //                                                .font(.caption2)
                        //                                                .foregroundStyle(.foreground1)
                        //                                            Spacer()
                        //                                            
                        //                                        }.padding(.leading)
                        //                                    }
                        //                                }.padding(.horizontal)
                        //                            }
                        //                            ZStack{
                        //                                
                        //                                RoundedRectangle(cornerRadius: 32)
                        //                                    .frame(width: 365, height: 90)
                        //                                    .foregroundStyle(.backgroundCard)
                        //                                
                        //                                HStack{
                        //                                    
                        //                                    Image("quizz6")
                        //                                        .resizable()
                        //                                        .aspectRatio(contentMode: .fill)
                        //                                        .frame(width: 150, height: 90)
                        //                                        .clipShape(RoundedRectangle(cornerRadius: 32))
                        //                                    
                        //                                    
                        //                                    VStack{
                        //                                        HStack{
                        //                                            Text("   Espèces de la forêt  ")
                        //                                                .foregroundStyle(.foreground1)
                        //                                                .fontWeight(.semibold)
                        //                                                .font(.subheadline)
                        //                                                .padding(.top)
                        //                                            
                        //                                            Image(systemName: "bookmark")
                        //                                                .foregroundStyle(.foreground1)
                        //                                                .padding(.trailing)
                        //                                            
                        //                                        }
                        //                                        
                        //                                        Spacer()
                        //                                        
                        //                                        HStack{
                        //                                            
                        //                                            Image(systemName: "hare.fill")
                        //                                                .foregroundStyle(.indigo.secondary)
                        //                                            Text("DIFFICILE")
                        //                                                .font(.caption2)
                        //                                                .foregroundStyle(.foreground1)
                        //                                            Spacer()
                        //                                            
                        //                                        }.padding(.leading)
                        //                                    }
                        //                                }.padding(.horizontal)
                        //                                
                        //                            }
                        //                            
                        //                            
                        //                        }
                        
                    }
                    
                }
            }
        }
    }
}
#Preview {
    HubQuizView()
}
