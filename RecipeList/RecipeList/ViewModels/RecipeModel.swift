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
    
    static func getPortion(ingredients:Ingredient, recipeServing:Int, targetServing:Int) -> String {
        var portion = ""
        var numerator = ingredients.num ?? 1 // nil collasing operator
        var denominator = ingredients.denom ?? 1
        var wholePortion:Int = 0
        if ingredients.num != nil {
            // Get a single service size by multiplying den by recipe servings
            denominator *= recipeServing
            // Get target portion by mult num by target servings
            numerator *= targetServing 
            
            // Reduce fraction by greates common divisor
            let divisor = Rational.greatestCommonDivisor(numerator, denominator)
            numerator /= divisor
            denominator /= divisor
            
            // Get the whole portion if num > den
            if numerator >= denominator {
                // Calculated the whole portion
                wholePortion = numerator / denominator
                // Calculated the remainder
                numerator %= denominator
                portion += String(wholePortion)
                
                
            }
            if numerator > 0 {
                                // Assign remainder as fraction to the portion string
                
                portion += wholePortion > 0 ? " " : ""
                portion +=  "\(numerator)/\(denominator)"
            }
            // Express the rem as fraction
        }
        
        if var unit = ingredients.unit {
            
            // to pluralize
            if wholePortion > 1 {
                if unit.suffix(2) == "ch" {
                    unit += "es"
                }
                else if unit.suffix(1) == "f" {
                    unit = String(unit.dropLast())
                    unit += "ves"
                }
                else {
                    unit += "s"
                }
            }
            portion += ingredients.num == nil && ingredients.denom == nil ? "" : " "
            return portion + unit
        }
        
        return portion
    }
    
}
