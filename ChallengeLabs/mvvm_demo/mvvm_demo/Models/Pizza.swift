//
//  Pizza.swift
//  mvvm_demo
//
//  Created by Meharpreet Singh Nanda on 2021-08-13.
//

import Foundation

class Pizza: Identifiable {
    var id = UUID()
    var name:String = ""
    var topping1:String = ""
    var topping2 = ""
    var topping3 = ""
    
    init(name:String, topping1:String, topping2:String, topping3:String) {
        self.name = name
        self.topping1 = topping1
        self.topping2 = topping2
        self.topping3 = topping3
    }
}
