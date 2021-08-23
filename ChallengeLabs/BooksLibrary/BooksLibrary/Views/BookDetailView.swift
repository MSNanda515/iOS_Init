//
//  BookDetailView.swift
//  BooksLibrary
//
//  Created by Meharpreet Singh Nanda on 2021-08-23.
//

import SwiftUI

struct BookDetailView: View {
    @EnvironmentObject var model:BookModel
    var selectedBook = 0
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(model.books[selectedBook].title)
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            VStack(spacing: 20) {
                NavigationLink(
                    destination: BookContentView(book: model.books[selectedBook]),
                    label: {
                        VStack(alignment: .center) {
                            Text("Read Now")
                            Image("cover\(model.books[selectedBook].id)")
                                .resizable()
                                .clipped()
                                .scaledToFit()
                        }
                    })
                    .foregroundColor(.black)
                
                Text("Mark For Later")
                    .bold()
                Button(action: {
                    model.books[selectedBook].isFavourite.toggle()
                }, label: {
//                    Image(systemName: model.books[selectedBook].isFavourite ? "star.fill" : "star")
//                        .accentColor(.yellow)
                    if model.books[selectedBook].isFavourite {
                        Image(systemName: "star.fill")
                            .font(Font.custom("Arial", size: 25))
                            .foregroundColor(.yellow)
                    }
                    else {
                        Image(systemName: "star")
                            .font(Font.custom("Arial", size: 25))
                    }
                })
                .foregroundColor(.black)
                
                
                
                Text("Rate Amazing Words")
                Picker("", selection: $model.books[selectedBook].rating) {
                    ForEach(1...5, id: \.self) {i in
                        Text("\(i)")
                            .tag(i)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .frame(width: 300)
            }
            
        }
        .padding()
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView()
    }
}
