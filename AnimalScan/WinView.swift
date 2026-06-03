//
//  WinView.swift
//  AnimalScan
//
//  Created by Apprenant 85 on 02/06/2026.
//

import SwiftUI

struct WinView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.background1, Color.background2, Color.background3]), startPoint: .topLeading, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                Text("VICTOIRE")
                    .font(.system(size: 70))
                    .foregroundStyle(.accent)
                    .fontWeight(.heavy)
                    .padding(.top)
                
                ZStack{
                        RoundedRectangle(cornerRadius: 32)
                            .frame(width: 320,height: 400)
                            .padding(.bottom)
                    ZStack{
                        RoundedRectangle(cornerRadius: 32)
                            .frame(width: 320,height: 200)
                            .padding(.bottom)
                        
                        Image("jaguar2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
//                            .clipShape(RoundedRectangle(cornerRadius: 32))
                            .frame(width: 320,height: 300)
                            .clipped()
                    }
                }
                
                RoundedRectangle(cornerRadius: 70)
                    .foregroundStyle(.backgroundCard)
                    .frame(width: 410, height: 300)
            }
            .padding(.top,60)
        }
    }
}

#Preview {
    WinView()
}
