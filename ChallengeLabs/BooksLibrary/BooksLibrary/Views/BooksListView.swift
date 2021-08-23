//
//  BooksListView.swift
//  BooksLibrary
//
//  Created by Meharpreet Singh Nanda on 2021-08-23.
//

import SwiftUI

struct BooksListView: View {
    @ObservedObject var model = BookModel()
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("My Library")
                    .bold()
                    .font(.largeTitle)
                
                    
                    GeometryReader {geo in
                       
                        
                        ScrollView {
                            LazyVStack {
                                ForEach(0..<model.books.count) { i in
                                    NavigationLink(
                                        destination: BookDetailView( selectedBook: i),
                                        label: {
                                            ZStack(alignment: .leading) {
                                                Rectangle()
                                                    .foregroundColor(.white)
                                                VStack(alignment: .leading) {
                                                    HStack {
                                                        Text(model.books[i].title)
                                                            .bold()
                                                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                                        Spacer()
                                                        if model.books[i].isFavourite {
                                                            Image(systemName: "star.fill")
                                                                .font(Font.custom("Arial", size: 25))
                                                                .foregroundColor(.yellow)
                                                        }
                                                        else {
                                                            Image(systemName: "star")
                                                                .font(Font.custom("Arial", size: 25))
                                                        }
                                                    }
                                                    Text(model.books[i].author)
                            //                            .font(.caption)
                                                    Image("cover\(model.books[i].id)")
                                                        .resizable()
                                                        .clipped()
                                                        .aspectRatio(contentMode: .fill)
                                                }
                                                .padding()
                                            }
                                            .frame(width: geo.size.width-30, alignment: .center)
                                            .cornerRadius(10)
                                            .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5 ), radius: 10, x: -5, y: 5)
                                        })
                                        .foregroundColor(.black)
                                    
                                }
                            }
                        
                    }
               
                }
            }
            .padding(.leading)
            .navigationBarHidden(true)
        }
        .environmentObject(model)
        
    }
}

struct BooksListView_Previews: PreviewProvider {
    static var previews: some View {
        BooksListView()
    }
}
