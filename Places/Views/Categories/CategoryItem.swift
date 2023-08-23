//
//  CategoryItem.swift
//  Places
//
//  Created by Justin Knight on 8/23/23.
//

import SwiftUI

struct CategoryItem: View {
    var landMark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            landMark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landMark.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landMark: ModelData().landmarks[0])
    }
}
