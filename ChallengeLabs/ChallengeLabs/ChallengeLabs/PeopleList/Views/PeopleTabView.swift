//
//  PersonView.swift
//  ChallengeLabs
//
//  Created by Meharpreet Singh Nanda on 2021-08-20.
//

import SwiftUI

struct PeopleTabView: View {
    @ObservedObject var model = PersonModel()
    var body: some View {
        TabView {
            PeopleListView()
                .tabItem { Image(systemName: "person.2") }
            
            PreferenceView()
                .tabItem { Image(systemName: "gearshape") }
        }
        .environmentObject(model)
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleTabView()
    }
}
