//
//  RecipeModel.swift
//  mvvm_demo
//
//  Created by Meharpreet Singh Nanda on 2021-08-12.
//

import Foundation

class RecipeModel {
    var recipes = [Recipe]()
    
    init() {
        // Create some recipe data
        recipes.append(Recipe(name: "Spaghetti", cuisine: "Italian"))
        recipes.append(Recipe(name: "Sushi", cuisine: "Japanese"))
    }
}
