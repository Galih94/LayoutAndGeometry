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
            ForEach(0..<10) { position in
                Text("number \(position)")
                    .alignmentGuide(.leading, computeValue: { _ in
                        Double(position) * -10
                    })
                
            }
        }
        .background(.red)
        .frame(width: 400, height: 400)
        .background(.blue)
               
        
    }
}

#Preview {
    ContentView()
}
