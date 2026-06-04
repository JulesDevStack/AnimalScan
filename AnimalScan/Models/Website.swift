//
//  Website.swift
//  AnimalScan
//
//  Created by Jules Liegeois on 04/06/2026.
//

import SwiftUI

struct Website: Identifiable {
    var id = UUID()
    var name: String
    var url: String
}

struct WebsitePill: View {
    var website: Website
    var body: some View {
        Button {
            
        } label: {
            HStack(alignment: .center) {
                VStack(alignment: .leading, spacing: 6) {
                    Text(website.name)
                        .font(.system(size: 15.5, weight: .medium))
                        .foregroundStyle(.black.opacity(0.85))
                    Text(website.url)
                }
                Spacer()
                Image(systemName: "chevron.right.circle")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(.black)
            }
            .padding()
            .frame(maxWidth: .infinity, minHeight: 100, alignment: .leading)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(.ultraThinMaterial)
                    .shadow(color: .black.opacity(0.08), radius: 3, x: 0, y: 4)
            )
        }
    }
}

var websites = [
    Website(name: "Ligue protectrice des oiseaux", url: "lpo.fr"),
    Website(name: "Ligue protectrice des oiseaux", url: "lpo.fr"),
    Website(name: "Ligue protectrice des oiseaux", url: "lpo.fr"),
    Website(name: "Ligue protectrice des oiseaux", url: "lpo.fr")
]

#Preview {
    WebsitePill(website: Website(name: "Ligue protectrice des oiseaux", url: "lpo.fr"))
}
