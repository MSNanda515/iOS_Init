//
//  ColorCardsTabView.swift
//  ChallengeLabs
//
//  Created by Meharpreet Singh Nanda on 2021-08-20.
//

import SwiftUI

struct ColorCardsTabView: View {
    var body: some View {
        TabView {
            ForEach(1...50, id: \.self) {i in
                ColorfulCardsView(indexCard: i)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct ColorCardsTabView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCardsTabView()
    }
}
