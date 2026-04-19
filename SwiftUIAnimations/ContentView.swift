//
//  ContentView.swift
//  SwiftUIAnimations
//
//  Created by Edwin Cardenas on 4/18/26.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0

    var body: some View {
        Button("Tap Me") {
            withAnimation {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .rotation3DEffect(
            .degrees(animationAmount),
            axis: (x: 1, y: 1, z: 1)
        )
    }
}

#Preview {
    ContentView()
}
