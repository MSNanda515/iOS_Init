//
//  QuoteModel.swift
//  QuotesList
//
//  Created by Meharpreet Singh Nanda on 2021-08-16.
//

import Foundation

class QuoteModel: ObservableObject {
    @Published var quotes:[Quote]
    init() {
        quotes = DataService.getLocalData()
    }
}
