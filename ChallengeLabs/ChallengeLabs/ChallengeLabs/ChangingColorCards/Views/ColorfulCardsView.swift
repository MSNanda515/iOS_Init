//
//  ColorfulCardsView.swift
//  ChallengeLabs
//
//  Created by Meharpreet Singh Nanda on 2021-08-20.
//

import SwiftUI

struct ColorfulCardsView: View {
    var indexCard:Int = 1
    var body: some View {
        VStack(alignment: .center) {
            GeometryReader {g in
                TabView {
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color(.sRGB, red: Double.random(in: 0...1), green: Double.random(in: 0...1), blue: Double.random(in: 0...1), opacity: 1))
                            
                            
                        Image(systemName: "\(indexCard).circle")
                            .resizable()
                            .clipped()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: g.size.width - 70)
                            .padding()
                            
                            
                    }
                    .frame(width: g.size.width - 40, height: g.size.height-100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(30)
                }
            }
        }
    }
}

struct ColorfulCardsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorfulCardsView()
    }
}
