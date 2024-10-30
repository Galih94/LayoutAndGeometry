//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Galih Samudra on 30/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello world")
            .background(.red)
            .offset(x: 100, y: 100)
            .background(.blue)
    }
}

#Preview {
    ContentView()
}
