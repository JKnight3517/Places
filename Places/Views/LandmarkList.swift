//
//  LandmarkList.swift
//  Places
//
//  Created by Justin Knight on 7/13/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landMark: landmark)
                } label: {
                    LandmarkRow(landMark: landmark)
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
                       .previewDevice(PreviewDevice(rawValue: deviceName))
                       .previewDisplayName(deviceName)
               }
    }
}
