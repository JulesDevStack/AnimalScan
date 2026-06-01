//
//  infos.swift
//  AnimalScan
//
//  Created by Jules Liegeois on 01/06/2026.
//

import SwiftUI

struct infos: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
            VStack(spacing: 32) {
                Text("Informations générales")
                    .font(.title)
                    .fontWeight(.semibold)
                VStack(spacing: 20) {
                    HStack {
                        Image(systemName: "megaphone")
                        Text("Numéro d’urgences")
                    }
                    .font(.system(size: 24, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    VStack {
                        Button {
                            
                        } label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 32)
                                    .foregroundStyle(.backgroundCard)
                                    .shadow(radius: 3, x: 0, y: 4)
                                HStack{
                                    Text("SPA - 3717")
                                        .foregroundStyle(.foreground1)
                                        .font(.system(size: 24, weight: .semibold))
                                }
                            }
                        }
                        Button {
                            
                        } label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 32)
                                    .foregroundStyle(.backgroundCard)
                                    .shadow(radius: 3, x: 0, y: 4)
                                HStack{
                                    Text("LPO - 3615")
                                        .foregroundStyle(.foreground1)
                                        .font(.system(size: 24, weight: .semibold))
                                }
                            }
                        }
                        Button {
                            
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 32)
                                    .foregroundStyle(.backgroundCard)
                                    .shadow(radius: 3, x: 0, y: 4)
                                HStack {
                                    Text("SPAs - 0699887766")
                                        .foregroundStyle(.foreground1)
                                        .font(.system(size: 24, weight: .semibold))
                                }
                            }
                        }
                    }
                }
                VStack {
                    HStack {
                        Image(systemName: "globe")
                        Text("Site Web")
                    }
                    .font(.system(size: 24, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    ScrollView {
                        VStack(spacing:20) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 32)
                                    .foregroundStyle(.backgroundCard)
                                    .frame(height: 90)
                                    .shadow(radius: 3, x: 0, y: 4)
                                HStack {
                                    Spacer()
                                    VStack(alignment: .leading) {
                                        Text("Ligue protectrice des oiseaux")
                                        Text("lpo.fr")
                                    }
                                    Spacer()
                                    Image(systemName: "chevron.right.circle")
                                    Spacer()
                                }
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 32)
                                    .foregroundStyle(.backgroundCard)
                                    .frame(height: 90)
                                    .shadow(radius: 3, x: 0, y: 4)
                                HStack {
                                    Spacer()
                                    VStack(alignment: .leading) {
                                        Text("Ligue protectrice des oiseaux")
                                        Text("lpo.fr")
                                    }
                                    Spacer()
                                    Image(systemName: "chevron.right.circle")
                                    Spacer()
                                }
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 32)
                                    .foregroundStyle(.backgroundCard)
                                    .frame(height: 90)
                                    .shadow(radius: 3, x: 0, y: 4)
                                HStack {
                                    Spacer()
                                    VStack(alignment: .leading) {
                                        Text("Ligue protectrice des oiseaux")
                                        Text("lpo.fr")
                                    }
                                    Spacer()
                                    Image(systemName: "chevron.right.circle")
                                    Spacer()
                                }
                            }
                        }
                    }
                }
                
                //Spacer()
            }
            .padding(24)
        }
        
        
    }
}

#Preview {
    infos()
}
