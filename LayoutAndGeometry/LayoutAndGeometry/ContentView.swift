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
                        Text("Row #\(index) \(proxy.frame(in: .global).minY)")
                            .frame(height: calculateHeight(for: Double(proxy.frame(in: .global).minY)))
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(calculateColor(at: Double(proxy.frame(in: .global).minY)))
                            .opacity(calculateOpacity(at: Double(proxy.frame(in: .global).minY)))
                            .rotation3DEffect(.degrees(proxy.frame(in: .global).minY - fullView.size.height / 2) / 5, axis: (x: 0, y: 1, z: 0))
                        
                    }
                    .frame(height: 40)
                }
            }
        }
    }
    
    private func calculateColor(at pos: Double) -> Color {
        // Clamp pos between 50 and 800
        let clampedPos = max(0, min(1000, pos))
        
        // Normalize pos to a 0-1 range
        let normalizedPos = (clampedPos - 50) / (800 - 50)
        
        // Transition from yellow to blue
        let hue = 0.15 - normalizedPos * 0.75  // Goes from yellow (0.15) to blue (approx -0.6)
        let saturation = 0.9
        let brightness = 1 - normalizedPos * 0.5  // Brightness gradually decreases from 1 to 0.5

        return Color(hue: hue, saturation: saturation, brightness: brightness)
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
    
    private func calculateHeight(for pos: Double) -> Double {
        if pos <= 120 {
            return 20
        } else if pos < 400 {
            return 20 + (pos - 120) * 20 / 280
        } else {
            return 40
        }
    }
}
#Preview {
    ContentView()
}
