//
//  PizzaView.swift
//  M2L12 Challenge Solution
//
//  Created by Meharpreet Singh Nanda on 2021-08-16.
//

import SwiftUI

struct PizzaView: View {
    var pizza:Pizza
    var body: some View {
        HStack {
            Image(pizza.image)
                .resizable()
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .scaledToFill()
                .clipped()
                .cornerRadius(5)
            VStack(alignment: .leading) {
                Text(pizza.name)
                    .font(.headline)
                HStack {
                    // In lesson 14, you'll learn how to dynamically generate Text elements from an array.
                    // For now, let's hardcode 3 toppings and make sure the JSON file has 3 toppings for each pizza
                    ForEach(pizza.toppings, id: \.self) {t in
                        Text(t)
                    }
                }
                .font(.caption)
                
            }
        }
    }
}

struct PizzaView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaView(pizza: PizzaModel().pizzas[0])
    }
}
