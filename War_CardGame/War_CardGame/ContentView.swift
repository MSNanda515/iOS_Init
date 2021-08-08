//
//  ContentView.swift
//  War_CardGame
//
//  Created by Meharpreet Singh Nanda on 2021-08-08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Spacer()
            Image("logo")
            Spacer()
            HStack {
                Spacer()
                Image("card3")
                Spacer()
                Image("card4")
                Spacer()
            }
            Spacer()
            Image("dealbutton")
            Spacer()
            HStack {
                Spacer()
                VStack {
                    Text("Player")
                    Text("0")
                        .padding(.top)
                }
                Spacer()
                VStack {
                    Text("CPU")
                    Text("0")
                        .padding(.top)
                }
                Spacer()
            }
            .font(.largeTitle)
            .foregroundColor(Color.white)
            Spacer()
            
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("bgColorTop"), Color("bgColorBot")]), startPoint: .top, endPoint: .bottom)
        )
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
