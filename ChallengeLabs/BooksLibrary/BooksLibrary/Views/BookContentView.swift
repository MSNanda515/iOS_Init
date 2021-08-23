//
//  BookContentView.swift
//  BooksLibrary
//
//  Created by Meharpreet Singh Nanda on 2021-08-23.
//

import SwiftUI

struct BookContentView: View {
    var book:Book
    var body: some View {
        TabView {
            ForEach(0..<book.content.count) {i in
                VStack {
                    Text(book.content[i])
                        .tag(i)
                    Spacer()
                    Text("\(i+1)")
                }
                .padding()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct BookContentView_Previews: PreviewProvider {
    static var previews: some View {
        BookContentView(book: BookModel().books[0])
    }
}
