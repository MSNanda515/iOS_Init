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
        ScrollView {
            LazyVStack {
                ForEach(model.modules) {module in
                    // Learning Card
                    HomeViewRow(image: "swift", title: "Learn Swift", description: "Some Description", count: "10 Lessons", time: "2 Hours")
                    // Test Card
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}
