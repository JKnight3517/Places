//
//  ContentView.swift
//  Places
//
//  Created by Justin Knight on 7/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tabSelection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    var body: some View {
        
        TabView(selection: $tabSelection) {
            CategoryHome()
                .tabItem{
                    Label("Featured", systemImage: "star")
                    
                }
                .tag(Tab.featured)
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}

