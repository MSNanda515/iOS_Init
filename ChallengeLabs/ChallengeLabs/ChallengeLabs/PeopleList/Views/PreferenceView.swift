//
//  PreferenceView.swift
//  ChallengeLabs
//
//  Created by Meharpreet Singh Nanda on 2021-08-20.
//

import SwiftUI

struct PreferenceView: View {
    @EnvironmentObject var model:PersonModel
    var body: some View {
        VStack {
            Text("Display Preferences")
                .font(.title)
            VStack {
                Toggle("Show name:", isOn: $model.nameActive)
                Toggle("Show address:", isOn: $model.addressActive)
                Toggle("Show company:", isOn: $model.companyActive)
                Toggle("Show years of experience:", isOn: $model.expActive)
            }
            .padding(.horizontal)
        }
    }
}

struct PreferenceView_Previews: PreviewProvider {
    static var previews: some View {
        PreferenceView()
    }
}
