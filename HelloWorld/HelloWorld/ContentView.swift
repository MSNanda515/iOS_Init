//
//  ContentView.swift
//  HelloWorld
//
//  Created by Meharpreet Singh Nanda on 2021-08-07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        
        VStack {
            Spacer()
            Image("warLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
//            Spacer takes as space available
            Spacer()
            
            HStack(alignment: .bottom) {
                Spacer()
                Text("Hello")
                Spacer()
                Text("World")
                Spacer()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
