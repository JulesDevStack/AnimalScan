//
//  GoldProgressBar.swift
//  AnimalScan
//
//  Created by Jules Liegeois on 08/06/2026.
//

import SwiftUI

struct GoldProgressBar: View {
    // 0 => 1
    var progress: Double
    var height: Int

    let goldDark = Color(red: 0.7, green: 0.5, blue: 0.05)
    let goldLight = Color(red: 1.0, green: 0.85, blue: 0.4)
    let whiteShine = Color.white

    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let progressWidth = max(0, min(width, width * CGFloat(progress)))

            ZStack(alignment: .leading) {
                Capsule()
                    .fill(Color.foreground1)
                    .overlay(
                        Capsule()
                            .stroke(goldDark.opacity(0.4), lineWidth: 1)
                    )
//                    .shadow(color: .black.opacity(0.8), radius: 3, x: 0, y: 2)

                PhaseAnimator([false, true]) { phase in
                    Capsule()
                        .fill(
                            LinearGradient(
                                stops: [
                                    .init(color: goldDark, location: 0.0),
                                    .init(color: goldLight, location: 0.4),
                                    .init(color: whiteShine, location: 0.5),
                                    .init(color: goldLight, location: 0.6),
                                    .init(color: goldDark, location: 1.0)
                                ],
                                startPoint: UnitPoint(x: phase ? 1 : -1, y: 0.5),
                                endPoint: UnitPoint(x: phase ? 2 : 0, y: 0.5)
                            )
                        )
                        .frame(width: progressWidth)
                        .shadow(color: goldLight.opacity(0.6), radius: 6, x: 0, y: 0)
                        .mask(Capsule().frame(width: progressWidth))
                } animation: { _ in
                    .linear(duration: 1.8).repeatForever(autoreverses: false)
                }
            }
            .animation(.interactiveSpring(response: 0.5, dampingFraction: 0.8), value: progress)
        }
        .frame(height: CGFloat(height))
    }
}

#Preview {
    GoldProgressBar(progress: 0.8, height: 8)
        .padding()
}
