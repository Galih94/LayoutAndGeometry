//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Galih Samudra on 30/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(alignment: .bottom) {
            Text("Live")
                .font(.caption)
            Text("Long")
            Text("And")
                .font(.title)
            Text("Prosper")
                .font(.largeTitle)
        }
        .background(.green)
        
    }
}

#Preview {
    ContentView()
}
