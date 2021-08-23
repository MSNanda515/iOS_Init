//
//  BooksListView.swift
//  BooksLibrary
//
//  Created by Meharpreet Singh Nanda on 2021-08-23.
//

import SwiftUI

struct BooksListView: View {
    var books = DataService.parseJsonData()
    var body: some View {
        Text(String(books.count))
    }
}

struct BooksListView_Previews: PreviewProvider {
    static var previews: some View {
        BooksListView()
    }
}
