//
//  RecipeDetailView.swift
//  RecipeList
//
//  Created by Meharpreet Singh Nanda on 2021-08-15.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe:Recipe
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                // MARK: Recipe-Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
               
                // MARK: Ingredients
                VStack(alignment: .leading) {
                    Text("Ingredients")
                        .font(.headline)
                        .padding(.vertical, 5)
                    
                    ForEach(recipe.ingredients, id:\.self) {item in
                        Text("- " + item)
                        
                    }
                }
                .padding(.horizontal)
                
                Divider()
                
                // MARK: Directions
                VStack(alignment: .leading) {
                    Text("Directions")
                        .font(.headline)
                        .padding(.vertical, 5)
                    ForEach(0..<recipe.directions.count, id: \.self) { i in
                        Text("\(i+1): " + recipe.directions[i])
                        
                    }
                    .padding([.leading], 5)
                }
                .padding(.horizontal)
            }
            
        }
        .navigationTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        // Create a dummy recipe so that we can see it in the preview
        let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[0])
    }
}
