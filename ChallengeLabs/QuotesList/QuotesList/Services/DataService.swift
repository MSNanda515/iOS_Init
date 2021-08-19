//
//  DataService.swift
//  QuotesList
//
//  Created by Meharpreet Singh Nanda on 2021-08-16.
//

import Foundation

class DataService {
    static func getLocalData() -> [Quote] {
        let pathString = Bundle.main.path(forResource: "quotes", ofType: "json")
        guard pathString != nil else {
            return [Quote]()
        }
        let url = URL(fileURLWithPath: pathString!)
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let quotes = try decoder.decode([Quote].self, from: data)
            // Set the id property
            for quote in quotes {
                quote.id = UUID()
            }
            return quotes
        }
        catch {
            print(error)
        }
        
        return [Quote]()
    }
}
