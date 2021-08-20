//
//  GeometryReaderTut.swift
//  HelloWorld
//
//  Created by Meharpreet Singh Nanda on 2021-08-19.
//

import SwiftUI

struct GeometryReaderTut: View {
    var body: some View {
        GeometryReader {geo in // geo used to get dimension of container
            // Items automatically take up the top left
            VStack {
                Rectangle()
                    .frame(width: geo.size.width/4, height: geo.size.height/6, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .onTapGesture {
                        // can be used to make object tappable
                        print("x:\(geo.frame(in: .global)) y:\(geo.frame(in: .local))")
                }
                
                Rectangle()
                    .frame(width: geo.size.width/4, height: geo.size.height/6, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.green)
            }
        }
    }
}

struct GeometryReaderTut_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderTut()
    }
}
