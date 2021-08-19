//
//  Quote.swift
//  QuotesList
//
//  Created by Meharpreet Singh Nanda on 2021-08-16.
//

import Foundation

class Quote: Identifiable, Decodable {
    var id:UUID?
    var quote:String
    var author:String
    var image:String
    var description: [String]
    
    init(quote:String, author:String, image:String, description:[String]) {
        self.id = UUID()
        self.quote = quote
        self.author = author
        self.image = image
        self.description = description
    }
}
