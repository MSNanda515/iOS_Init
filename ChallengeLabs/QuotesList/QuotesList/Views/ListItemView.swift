//
//  ListItemView.swift
//  QuotesList
//
//  Created by Meharpreet Singh Nanda on 2021-08-16.
//

import SwiftUI

struct ListItemView: View {
    var quote:Quote
    var body: some View {
        ZStack {
            Image(quote.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(7)
                
            VStack(alignment: .leading) {
                Text(quote.quote)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(quote.author)
                    .font(.caption)
            }
            .foregroundColor(.white)
        }
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(quote: QuoteModel().quotes[0])
    }
}
