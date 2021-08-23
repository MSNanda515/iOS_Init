//
//  BookModel.swift
//  BooksLibrary
//
//  Created by Meharpreet Singh Nanda on 2021-08-23.
//

import Foundation

class BookModel: ObservableObject {
    @Published var books:[Book]
    init() {
        books = DataService.parseJsonData()
    }
}
