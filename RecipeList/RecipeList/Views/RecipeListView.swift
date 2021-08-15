//
//  ContentView.swift
//  RecipeList
//
//  Created by Meharpreet Singh Nanda on 2021-08-15.
//

import SwiftUI

struct RecipeListView: View {
    // Reference the view model
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        NavigationView {
            
            List(model.recipes) {r in
                NavigationLink(
                    destination: RecipeDetailView(recipe: r),
                    label: {
                        HStack(spacing: 17.25) {
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .clipped()
                                .cornerRadius(5)
                            Text(r.name)
                        }
                    })
                
            }
            .navigationTitle("Recipes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
