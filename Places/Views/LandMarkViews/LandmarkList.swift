//
//  LandmarkList.swift
//  Places
//
//  Created by Justin Knight on 7/13/23.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites Only")
                }
                       
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landMark: landmark)
                    } label: {
                        LandmarkRow(landMark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
      
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
                   LandmarkList()
                .environmentObject(ModelData())
               }
    }
}
