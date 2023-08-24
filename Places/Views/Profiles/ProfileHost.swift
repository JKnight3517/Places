//
//  ProfileHost.swift
//  Places
//
//  Created by Justin Knight on 8/23/23.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @EnvironmentObject var modelData: ModelData
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            HStack {
                HStack {
                    Spacer()
                    EditButton()
                }
            }
            
            if editMode?.wrappedValue == .inactive {
                       ProfileSummary(profile: modelData.profile)
                   } else {
                       ProfileEditor(profile: $draftProfile)
                   }
             }
             .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
            .environmentObject(ModelData())
    }
}
