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
                CameraLivePreview()
                    .tabItem {
                        Label("Scanner", systemImage: "camera")
                    }
                SpeciesListView()
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
        }
        .preferredColorScheme(.light)
    }
}

#Preview {
    TapBar()
}
