//
//  ContentView.swift
//  Places
//
//  Created by Justin Knight on 7/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CircleImage()
            VStack {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

