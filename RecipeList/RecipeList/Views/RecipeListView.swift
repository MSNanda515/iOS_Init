//
//  ContentView.swift
//  RecipeList
//
//  Created by Meharpreet Singh Nanda on 2021-08-15.
//

import SwiftUI

struct RecipeListView: View {
    // Reference the view model
    // @ObservedObject var model = RecipeModel()
    // Use the environment object
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment:.leading) {
                Text("All Recipes")
                    .bold()
                    .font(Font.custom("Avenir Heavy", size: 24))
                    .padding(.top, 40)
                    .padding(.leading )
                ScrollView {
                    LazyVStack(alignment: .leading) {
                        ForEach(model.recipes) {r in
                            NavigationLink(
                                destination: RecipeDetailView(recipe: r),
                                label: {
                                    HStack(spacing: 17.25) {
                                        Image(r.image)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 50, height: 50, alignment: .center)
                                            .clipped()
                                            .cornerRadius(5)
                                        VStack(alignment: .leading) {
                                            Text(r.name)
                                                .bold()
                                            RecipeHighlightsView(highlights: r.highlights)
                                            
                                        }
                                        .foregroundColor(.black)
                                    }
                                })
                            
                        }
                    }
                    .padding(.leading)
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
            .environmentObject(RecipeModel())
    }
}
