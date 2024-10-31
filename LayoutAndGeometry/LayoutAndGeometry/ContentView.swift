//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Galih Samudra on 30/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Text("IMPORTANT")
                .frame(width: 200)
                .background(.blue)
            
            GeometryReader { proxy in
                Image(.default)
                    .resizable()
                    .scaledToFit()
                    .frame(width: proxy.size.width * 0.8)
                    .frame(width: proxy.size.width, height: proxy.size.height)
                    .background(.green)
            }
        }
    }
}

#Preview {
    ContentView()
}
