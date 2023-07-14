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
                    LandmarkDetail()
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
        LandmarkList()
    }
}
