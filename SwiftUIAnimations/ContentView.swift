//
//  ContentView.swift
//  SwiftUIAnimations
//
//  Created by Edwin Cardenas on 4/18/26.
//

import SwiftUI

struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint = .topLeading

    func body(content: Content) -> some View {
        content
            //            .rotationEffect(.degrees(amount), anchor: anchor)
            .rotation3DEffect(
                .degrees(amount),
                axis: (x: 0, y: 0, z: 1),
                anchor: anchor
            )
            .clipped()
    }
}

extension AnyTransition {
    static var pivot: AnyTransition {
        .modifier(
            active: CornerRotateModifier(amount: -90),
            identity: CornerRotateModifier(amount: 0)
        )
    }
}

struct ContentView: View {
    @State private var isShowingRed = false

    var body: some View {
        ZStack {
            Rectangle()
                .fill(.blue)
                .frame(width: 200, height: 200)

            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.pivot)
            }
        }
        .onTapGesture {
            withAnimation {
                isShowingRed.toggle()
            }
        }
    }
}

#Preview {
    ContentView()
}
