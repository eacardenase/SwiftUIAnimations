//
//  ContentView.swift
//  SwiftUIAnimations
//
//  Created by Edwin Cardenas on 4/18/26.
//

import SwiftUI

struct ContentView: View {
    @State private var enabled = false

    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? Color.red.gradient : Color.blue.gradient)
        .animation(.default, value: enabled)
        .foregroundStyle(.white)
        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
        .animation(
            enabled ? .spring(duration: 1, bounce: 0.6) : .easeInOut(duration: 1),
            value: enabled
        )
    }
}

#Preview {
    ContentView()
}
