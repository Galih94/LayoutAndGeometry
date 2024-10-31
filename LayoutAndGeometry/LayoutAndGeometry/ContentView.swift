//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Galih Samudra on 30/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { proxy in
            Image(.default)
                .resizable()
                .scaledToFit()
                .frame(width: proxy.size.width * 0.8, height: 300)
        }
    }
}

#Preview {
    ContentView()
}
