//
//  ContentView.swift
//  SwiftUIAnimations
//
//  Created by Edwin Cardenas on 4/18/26.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingRed = false

    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }

            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(
                        .asymmetric(
                            insertion: .scale,
                            removal: .slide.combined(with: .opacity)
                        )
                    )
            }
        }
    }
}

#Preview {
    ContentView()
}
