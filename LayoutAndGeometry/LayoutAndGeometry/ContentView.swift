//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Galih Samudra on 30/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            GeometryReader { proxy in
                Text("Hello world")
                    .frame(width: proxy.size.width * 0.9)
                    .background(.blue)
            }
            .background(.green)
            Text("More text")
                .background(.gray)
        }
    }
}

#Preview {
    ContentView()
}
