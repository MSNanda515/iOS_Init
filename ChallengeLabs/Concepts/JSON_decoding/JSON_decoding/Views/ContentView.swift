//
//  ContentView.swift
//  JSON_decoding
//
//  Created by Meharpreet Singh Nanda on 2021-08-14.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = PizzaModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            List(model.pizzas) {pizza in
                VStack {
                    Text(pizza.name)
                        .font(.title)
                    
//                    Text(pizza.toppings[0])
                    List(pizza.toppings, id: \.self) {t in
                        Text(t)
                    }
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
