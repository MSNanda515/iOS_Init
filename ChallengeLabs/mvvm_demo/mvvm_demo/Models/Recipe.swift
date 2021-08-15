//
//  Recipe.swift
//  mvvm_demo
//
//  Created by Meharpreet Singh Nanda on 2021-08-12.
//

import Foundation

class Recipe: Identifiable, Decodable{
    var id:UUID? // The json might not contain the ID property
    var name = ""
    var cuisine = ""
}
