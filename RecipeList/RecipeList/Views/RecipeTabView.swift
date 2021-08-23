//
//  RecipeTabView.swift
//  RecipeList
//
//  Created by Meharpreet Singh Nanda on 2021-08-19.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        TabView() {
            RecipeFeaturedView()
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            RecipeListView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("List") 
                    }
                }
        }
        .environmentObject(RecipeModel())
        .font(Font.custom("Avenir", size: 15))
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
