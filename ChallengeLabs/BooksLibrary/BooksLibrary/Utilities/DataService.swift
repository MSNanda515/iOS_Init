//
//  DataService.swift
//  BooksLibrary
//
//  Created by Meharpreet Singh Nanda on 2021-08-23.
//

import Foundation

class DataService {
    static func parseJsonData() -> [Book] {
        let pathRes = Bundle.main.path(forResource: "Data", ofType: "json")
        if let path = pathRes {
            let url = URL(fileURLWithPath: path)
            let decoder = JSONDecoder()
            do {
                let data = try Data(contentsOf: url)
                let bookData = try decoder.decode([Book].self, from: data)
                return bookData
            }
            catch {
                print(error)
            }
        }
        return [Book]()
    }
}
