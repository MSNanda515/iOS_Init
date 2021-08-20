//
//  PeopleListView.swift
//  ChallengeLabs
//
//  Created by Meharpreet Singh Nanda on 2021-08-20.
//

import SwiftUI

struct PeopleListView: View {
    @EnvironmentObject var model:PersonModel
    var body: some View {
        VStack {
            Text("People")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            List(model.people) {p in
                Text(p.name)
            }
        }
    }
}

struct PeopleListView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleListView()
    }
}
