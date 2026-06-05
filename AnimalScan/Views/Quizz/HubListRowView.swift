//
//  HubListRowView.swift
//  AnimalScan
//
//  Created by Apprenant 85 on 04/06/2026.
//

import SwiftUI

struct HubListRowView: View {
    @State private var isSaved = false
    @State private var saves = 0
    
    var imageName: String
    var titleName: String
    var savingName: String
    var symbolName: String
    var levelName: String
    var coloriconName: Color
    
    var body: some View {
        
        
            VStack{
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 32)
                        .frame(width: 365, height: 90)
                        .foregroundStyle(.backgroundCard)
                    
                    HStack(spacing: 8){
                        
                        Image(imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 90)
                            .clipShape(RoundedRectangle(cornerRadius: 32))
                        
                        
                        VStack(alignment: .leading){
                            HStack{
                                Button{
                                    
                                }label:{
                                    Text(titleName)
                                        .foregroundStyle(.foreground1)
                                        .fontWeight(.semibold)
                                        .font(.headline)
                                }
                            }
                            
                            HStack{
                                
                                Image(systemName: symbolName)
                                    .foregroundStyle(coloriconName)
                                Text(levelName)
                                    .font(.caption2)
                                    .foregroundStyle(.foreground1)
                                Button{
                                    
                                    if isSaved {
                                        saves -= 1
                                    } else {
                                        saves += 1
                                    }
                                    
                                    isSaved.toggle()
                                }label: {
                                    Image(systemName: isSaved ? "bookmark.fill" : savingName )
                                        .foregroundStyle(isSaved ? .foreground1 : .foreground1)
                                        .font(.system(size: 20, weight: .semibold))
                                    
                                }
                            }
                        }
                    }
                }
                
            }
        
    }
}

#Preview {
    HubListRowView(imageName: "quizz4", titleName: "Passereaux du jardin", savingName: "bookmark", symbolName: "tortoise.fill", levelName: "MOYEN", coloriconName: .teal)
}

