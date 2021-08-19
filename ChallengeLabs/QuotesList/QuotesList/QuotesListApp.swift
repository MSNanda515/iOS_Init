//
//  QuotesListApp.swift
//  QuotesList
//
//  Created by Meharpreet Singh Nanda on 2021-08-16.
//

import SwiftUI

@main
struct QuotesListApp: App {
    var body: some Scene {
        WindowGroup {
//            QuoteListView()
            ListItemView(quote: QuoteModel().quotes[0])
        }
    }
}
