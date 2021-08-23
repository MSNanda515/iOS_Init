//
//  RecipeDetailView.swift
//  RecipeList
//
//  Created by Meharpreet Singh Nanda on 2021-08-15.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe:Recipe
    @State var selectedServingSize = 2
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                // MARK: Recipe-Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
               // MARK: Recipe Title
                Text(recipe.name)
                    .bold()
                    .font(Font.custom("Avenir Heavy", size: 24))
                    .padding(.top, 20)
                    .padding(.leading)
                    .padding(.leading )
                
                // MARK: Portion Picker
                VStack {
                    Text("Select your serving size:")
                    Picker("", selection: $selectedServingSize) {
                        Text("2").tag(2)
                        Text("4").tag(4)
                        Text("6").tag(6)
                        Text("8").tag(8)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .frame(width: 200)
                }
                .padding()
                
                // MARK: Ingredients
                VStack(alignment: .leading) {
                    Text("Ingredients")
                        .font(Font.custom("Avenir Heavy", size: 16))
                        .padding(.vertical, 5)
                    
                    ForEach(recipe.ingredients) {item in
                        Text("- " + RecipeModel.getPortion(ingredients: item, recipeServing: recipe.servings, targetServing: selectedServingSize) + " " + item.name.lowercased())
                        
                    }
                }
                .padding(.horizontal)
                
                Divider()
                
                // MARK: Directions
                VStack(alignment: .leading) {
                    Text("Directions")
                        .font(Font.custom("Avenir Heavy", size: 16))
                        .padding(.vertical, 5)
                    ForEach(0..<recipe.directions.count, id: \.self) { i in
                        Text("\(i+1): " + recipe.directions[i])
                        
                    }
                    .padding([.leading], 5)
                }
                .padding(.horizontal)
            }
            
        }
      
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        // Create a dummy recipe so that we can see it in the preview
        let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[0])
    }
}
