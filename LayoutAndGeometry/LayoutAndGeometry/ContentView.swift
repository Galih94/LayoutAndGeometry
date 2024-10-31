//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Galih Samudra on 30/10/24.
//

import SwiftUI

struct ContentView: View {
    let colors: [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]

    var body: some View {
        GeometryReader { fullView in
            ScrollView(.vertical) {
                ForEach(0..<50) { index in
                    GeometryReader { proxy in
                        Text("Row #\(index)")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(colors[index % 7])
                            .opacity(calculateOpacity(at: Double(proxy.frame(in: .global).minY)))
                            .rotation3DEffect(.degrees(proxy.frame(in: .global).minY - fullView.size.height / 2) / 5, axis: (x: 0, y: 1, z: 0))
                    }
                    .frame(height: 40)
                }
            }
        }
    }
    
    private func calculateOpacity(at pos: Double) -> Double {
        if pos < 60 {
            return 0
        } else if pos < 200 {
            return (pos - 60) / 140
        } else {
            return 1 + (pos - 200) / 100
        }
    }
}
#Preview {
    ContentView()
}
