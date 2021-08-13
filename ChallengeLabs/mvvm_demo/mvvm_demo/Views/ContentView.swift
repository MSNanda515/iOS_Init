//
//  ContentView.swift
//  mvvm_demo
//
//  Created by Meharpreet Singh Nanda on 2021-08-12.
//

import SwiftUI

struct ContentView: View {
//    var model = RecipeModel()
//
//    var body: some View {
//        List(model.recipes) { r in
//            VStack(alignment: .leading) {
//                Text(r.name)
//                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//                Text(r.cuisine)
//            }
//        }
//    }
    
    var model = PizzaModel()
    
    var body: some View {
        List(model.pizzas) {pizza in
            VStack(alignment: .leading) {
                Text(pizza.name)
                HStack {
                    Text(pizza.topping1)
                    Text(pizza.topping2)
                    Text(pizza.topping3)
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
