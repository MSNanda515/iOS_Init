//
//  GeometryViewChall.swift
//  HelloWorld
//
//  Created by Meharpreet Singh Nanda on 2021-08-20.
//

import SwiftUI

struct GeometryViewChall: View {
    var body: some View {
        VStack(spacing: 0) {
            
            GeometryReader {g in
                ZStack {
                    Rectangle()
                        .foregroundColor(.green)
                    Rectangle()
                        .frame(width: g.size.width*2/3, height: g.size.height/4, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.red)
                }
            }
            HStack(spacing: 0) {
                Rectangle()
                    .foregroundColor(.purple)
                Rectangle()
                    .foregroundColor(.orange)
            }
        }
        .ignoresSafeArea()
    }
}

struct GeometryViewChall_Previews: PreviewProvider {
    static var previews: some View {
        GeometryViewChall()
    }
}
