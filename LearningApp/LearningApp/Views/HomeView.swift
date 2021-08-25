//
//  ContentView.swift
//  LearningApp
//
//  Created by Meharpreet Singh Nanda on 2021-08-25.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var model: ContentModel
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
