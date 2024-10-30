//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Galih Samudra on 30/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Live long and prosper")
            .offset(x: 11, y: 50)
            .frame(width: 300, height: 300, alignment: .topLeading)
            .background(.green)
        
    }
}

#Preview {
    ContentView()
}
