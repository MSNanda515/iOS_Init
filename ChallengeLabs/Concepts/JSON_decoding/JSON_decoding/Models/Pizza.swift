//
//  Pizza.swift
//  JSON_decoding
//
//  Created by Meharpreet Singh Nanda on 2021-08-14.
//

import Foundation
////{ "name":"Meat Lovers",
//"toppings": ["Pepperoni", "Bacon", "Sausage"]
//},

class Pizza: Decodable, Identifiable {
    var id:UUID?
    var name = ""
    var toppings = [String]()
    
    init(name:String, toppings:[String]) {
        self.name = name
        self.toppings = ["Onion"]
    }
}
