//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Galih Samudra on 30/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello world")
                .alignmentGuide(.leading) { dimension in
                    dimension[.trailing]
                }
            Text("This is longer line of text")
        }
        .background(.red)
        .frame(width: 400, height: 400)
        .background(.blue)
               
        
    }
}

#Preview {
    ContentView()
}
