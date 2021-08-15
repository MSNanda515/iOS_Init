//
//  RecipeModel.swift
//  RecipeList
//
//  Created by Meharpreet Singh Nanda on 2021-08-15.
//

import Foundation

class RecipeModel: ObservableObject {
    @Published var recipes = [Recipe]()
    init() {
        // Create an instance of data service and get the data
        self.recipes = DataService.getLocalData()
    }
    
}
