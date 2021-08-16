//
//  ContentView.swift
//  M2L12 Challenge Solution
//
//  Created by Christopher Ching on 2021-01-19.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = PizzaModel()
    
    var body: some View {
        
        List(model.pizzas) { pizza in
            
            PizzaView(pizza: pizza)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
