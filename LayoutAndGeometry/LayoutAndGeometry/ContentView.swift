//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Galih Samudra on 30/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(.default)
            .resizable()
            .scaledToFit()
            .containerRelativeFrame(.horizontal, { size, axis in
                size * 0.8
            })
            .background(.green)
    }
}

#Preview {
    ContentView()
}
