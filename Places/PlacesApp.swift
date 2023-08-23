//
//  PlacesApp.swift
//  Places
//
//  Created by Justin Knight on 7/12/23.
//

import SwiftUI

@main
struct PlacesApp: App {
    @StateObject private var modelData = ModelData()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
