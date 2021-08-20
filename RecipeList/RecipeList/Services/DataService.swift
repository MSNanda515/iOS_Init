//
//  DataService.swift
//  RecipeList
//
//  Created by Meharpreet Singh Nanda on 2021-08-15.
//

import Foundation

class DataService {
    static func getLocalData() -> [Recipe] {
        // Parse the local file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // Check if pathString is not nil, otherwise...
        guard pathString != nil else {
            return [Recipe]()
        }
        // Get a url path to the json file
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        // Create a data object
        do {
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                for r in recipeData {
                    // Add unique id to ingredient objects
                    r.id = UUID()
                    for ing in r.ingredients {
                        ing.id = UUID()
                    }
                }
                return recipeData
            }
            catch {
                print(error)
            }
        }
        catch {
            print(error)
        }
        // Decode the data and return the data
        
        // add the unique id
        return [Recipe]()
    }
}
