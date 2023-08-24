//
//  HikeBadge.swift
//  Places
//
//  Created by Justin Knight on 8/23/23.
//

import SwiftUI

struct HikeBadge: View {
    
    var name: String
    
    var body: some View {
        VStack(alignment: .center) {
            Badge()
                // first lay it out in ideal 300X300, then scale down. This makes it so the graphics render as desired
                .frame(width: 300, height: 300)
                .scaleEffect(1.0/3.0)
                .frame(width:100, height: 100)
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name)")
        }
    }
}

struct HikeBadge_Previews: PreviewProvider {
    static var previews: some View {
        HikeBadge(name: "Preview Testing")
    }
}
