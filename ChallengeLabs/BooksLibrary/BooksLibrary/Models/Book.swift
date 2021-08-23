//
//  Book.swift
//  BooksLibrary
//
//  Created by Meharpreet Singh Nanda on 2021-08-23.
//

import Foundation

class Book: Identifiable, Decodable {
    var id:Int
    var title:String
    var author:String
    var isFavourite:Bool
    var currentPage: Int
    var rating:Int
    var content:[String]
}
