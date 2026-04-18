//
//  ContentView.swift
//  SwiftUIAnimations
//
//  Created by Edwin Cardenas on 4/18/26.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0

    var body: some View {
        Button("Tap Me") {
            guard animationAmount < 6 else {
                animationAmount = 1

                return
            }

            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
        .animation(
            .easeInOut(duration: 1)
            .repeatCount(3, autoreverses: true),
            value: animationAmount
        )
    }
}

#Preview {
    ContentView()
}
