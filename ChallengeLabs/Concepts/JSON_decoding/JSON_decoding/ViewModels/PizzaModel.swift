//
//  PizzaModel.swift
//  JSON_decoding
//
//  Created by Meharpreet Singh Nanda on 2021-08-14.
//

import Foundation

class PizzaModel: ObservableObject {
    @Published var pizzas = [Pizza]()
    
    init() {
        // Get the path
        let pathData = Bundle.main.path(forResource: "pizzas", ofType: "json")
        if let path = pathData {
            let url = URL(fileURLWithPath: path)

            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                pizzas = try decoder.decode([Pizza].self, from: data)
            }
            catch {
                print (error)
            }
            for pizza in pizzas {
                pizza.id = UUID()
            }
        }
    }
}
