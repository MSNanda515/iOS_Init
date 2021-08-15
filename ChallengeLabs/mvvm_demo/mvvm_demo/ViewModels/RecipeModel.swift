//
//  RecipeModel.swift
//  mvvm_demo
//
//  Created by Meharpreet Singh Nanda on 2021-08-12.
//

import Foundation

class RecipeModel: ObservableObject {
    @Published var recipes = [Recipe]()
    
    init() {
        // Get the path of the JSON in the app bundle
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        if let path = pathString {
            // Create a URL object
            let url = URL(fileURLWithPath: path)
            
            do {
                // Place the code that might potentially throw an error
                // Create a data object with the data at the URL
                let data = try Data(contentsOf: url)
                // parse the data
                let decoder = JSONDecoder()
                recipes = try decoder.decode([Recipe].self, from: data)
            }
            catch {
                // Handle the error
                print (error)
            }
            // Set the id for the recipes obtained
            for r in recipes {
                r.id = UUID()
            }
        }
    }
}
