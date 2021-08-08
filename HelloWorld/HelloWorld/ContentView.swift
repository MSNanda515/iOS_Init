//
//  ContentView.swift
//  HelloWorld
//
//  Created by Meharpreet Singh Nanda on 2021-08-07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            .font(.custom("arial", size: 25))
            .padding()
            .background(Color.green)
            .cornerRadius(10)
            .foregroundColor(Color.white)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue, lineWidth: 10)
            )
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
