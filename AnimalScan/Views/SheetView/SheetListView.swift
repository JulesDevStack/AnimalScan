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
            List(sheets){ sheet in
                NavigationLink{
                    FicheView(sheet: sheet)
                }label: {
                    HStack{
                        Image(sheet.image)
                            .resizable()
                            .scaledToFill()
                        Text(sheet.name)
                    }
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
