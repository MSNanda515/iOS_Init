//
//  IncreasingHeightBoxView.swift
//  ChallengeLabs
//
//  Created by Meharpreet Singh Nanda on 2021-08-20.
//

import SwiftUI

struct IncreasingHeightBoxView: View {
    var size:Int = 5
    var body: some View {
        ScrollView {
            GeometryReader {g in
                LazyVStack {
                    ForEach(0...60, id: \.self) {i in
                        Rectangle()
                            .frame(width: g.size.width-20, height: pow(1.1, CGFloat(i)), alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                }
            }
        }
    }
}

struct IncreasingHeightBoxView_Previews: PreviewProvider {
    static var previews: some View {
        IncreasingHeightBoxView()
    }
}
