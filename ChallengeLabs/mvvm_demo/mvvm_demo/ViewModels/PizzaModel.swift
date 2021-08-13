//
//  PizzaModel.swift
//  mvvm_demo
//
//  Created by Meharpreet Singh Nanda on 2021-08-13.
//

import Foundation

class PizzaModel: ObservableObject {
    @Published var pizzas = [Pizza]()
    
    init() {
        pizzas.append(Pizza(name: "Indo", topping1: "Onion", topping2: "Tomato", topping3: "Carrot"))
        pizzas.append(Pizza(name: "Indo", topping1: "Onion", topping2: "Tomato", topping3: "Carrot"))
        pizzas.append(Pizza(name: "Indo", topping1: "Onion", topping2: "Tomato", topping3: "Carrot"))
    }
    
    func changeTopping() {
        for index in 0...pizzas.count-1 {
            pizzas[index].topping1 = "Pineapple"
        }
    }
}
