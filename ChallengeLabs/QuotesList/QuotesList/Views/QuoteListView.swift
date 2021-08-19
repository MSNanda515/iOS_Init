//
//  ContentView.swift
//  QuotesList
//
//  Created by Meharpreet Singh Nanda on 2021-08-16.
//

import SwiftUI

struct QuoteListView: View {
    var model = QuoteModel()
    var body: some View {
        NavigationView {
            
            List(model.quotes) {quote in
                ListItemView(quote: quote)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteListView()
    }
}
