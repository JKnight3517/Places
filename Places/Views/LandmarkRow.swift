//
//  LandmarkRow.swift
//  Places
//
//  Created by Justin Knight on 7/13/23.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landMark: Landmark
    
    var body: some View {
        HStack {
            landMark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landMark.name)
            Spacer()
            
            if landMark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landMark: landmarks[0])
            LandmarkRow(landMark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
