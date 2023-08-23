//
//  LandmarkDetail.swift
//  Places
//
//  Created by Justin Knight on 7/13/23.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landMark: Landmark
    
    var landMarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landMark.id})!
    }
    var body: some View {
        ScrollView {
            MapView(coordinate: landMark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            
            CircleImage(image: landMark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landMark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landMarkIndex].isFavorite)
                    
                }

                
                
                HStack {
                    Text(landMark.park)
                    Spacer()
                    Text(landMark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                
                Divider()
                
                
                Text("About \(landMark.name)")
                    .font(.title2)
                Text(landMark.description)
            }
            .padding()
        }
        .navigationTitle(landMark.name)
    }

}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        LandmarkDetail(landMark: modelData.landmarks[0])
            .environmentObject(modelData)
    }
}
