//
//  Recipe.swift
//  RecipeList
//
//  Created by Meharpreet Singh Nanda on 2021-08-15.
//

import Foundation

class Recipe: Identifiable, Decodable {
    // Identifiable for list, decodable for json parsing
    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var totalTime:String
    var servings:Int
    var highlights:[String]
    var ingredients:[Ingredient]
    var directions:[String]
}

class Ingredient: Identifiable, Decodable {
    // Identifiable for list, decodable for json parsing
    var id:UUID?
    var name:String
    var num:Int?
    var denom:Int?
    var unit:String?
}
