//
//  PizzaModel.swift
//  mvvm_demo
//
//  Created by Meharpreet Singh Nanda on 2021-08-13.
//

import Foundation

class PizzaModel {
    var pizzas = [Pizza]()
    
    init() {
        pizzas.append(Pizza(name: "Indo", topping1: "Onion", topping2: "Tomato", topping3: "Carrot"))
        pizzas.append(Pizza(name: "Indo", topping1: "Onion", topping2: "Tomato", topping3: "Carrot"))
        pizzas.append(Pizza(name: "Indo", topping1: "Onion", topping2: "Tomato", topping3: "Carrot"))
    }
}
