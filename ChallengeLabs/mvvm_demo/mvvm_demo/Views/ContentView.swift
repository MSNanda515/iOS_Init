//
//  ContentView.swift
//  mvvm_demo
//
//  Created by Meharpreet Singh Nanda on 2021-08-12.
//

import SwiftUI

struct ContentView: View {
//    @ObservedObject var model = RecipeModel()
//
//    var body: some View {
//
//        VStack {
//            List(model.recipes) { r in
//                VStack(alignment: .leading) {
//                    Text(r.name)
//                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//                    Text(r.cuisine)
//                }
//            }
//            Button("Add Item") {
//                model.addRecipe()
//            }
//        }
//    }
//
//    @ObservedObject var model = PizzaModel()
//
//    var body: some View {
//        VStack {
//            List(model.pizzas) {pizza in
//                VStack(alignment: .leading) {
//                    Text(pizza.name)
//                    HStack {
//                        Text(pizza.topping1)
//                        Text(pizza.topping2)
//                        Text(pizza.topping3)
//
//                    }
//                }
//            }
//            Button("Change") {
//                model.changeTopping()
//            }
//        }
//
//    }
    @State var listStr:[String]? = nil
    var body: some View {
        VStack {
            HStack {
                Button("Clear") {
                    listStr = nil
                }
                Button("Add") {
                    listStr = ["Kvell", "Callow", "nimrod"]
                }
            }
            if listStr == nil {
                Text("Press add")
            }
            else {
                List(listStr!, id: \.self) {item in
                    Text(item)
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
