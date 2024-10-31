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
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach(0..<50) { index in
                    GeometryReader { proxy in
                        Text("Number \(index)")
                            .font(.largeTitle)
                            .padding()
                            .background(.red)
                            .rotation3DEffect(.degrees(-proxy.frame(in: .global).minX) / 8, axis: (x: 0.0, y: 1.0, z: 0.0))
                            .frame(width: 200, height: 200)
                    }
                    .frame(width: 200, height: 200)
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
