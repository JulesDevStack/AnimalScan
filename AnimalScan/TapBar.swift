//
//  TapBar.swift
//  AnimalScan
//
//  Created by Jules Liegeois on 05/06/2026.
//

import SwiftUI

struct TapBar: View {
    var body: some View {
        TabView {
            Group {
                PictureConfirmationView()
                    .tabItem {
                        Label("Scanner", systemImage: "camera")
                    }
                SheetListView()
                    .tabItem {
                        Label("Wiki", systemImage: "building.columns")
                    }
                HubQuizView()
                    .tabItem {
                        Label("Quizz", systemImage: "gamecontroller")
                    }
                BlogHubView()
                    .tabItem {
                        Label("Blog", systemImage: "book")
                    }
                InfosView()
                    .tabItem {
                        Label("Infos", systemImage: "phone")
                    }
            }
//            .toolbarColorScheme(.dark, for: .tabBar)
//            .toolbarBackground(.visible, for: .tabBar)
            
        }
    }
}

#Preview {
    TapBar()
}
