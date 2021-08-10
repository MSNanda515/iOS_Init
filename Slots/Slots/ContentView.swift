//
//  ContentView.swift
//  Slots
//
//  Created by Meharpreet Singh Nanda on 2021-08-10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("SwiftUI Slots!")
                .font(.largeTitle)
            Text("Credits: " + "1025")
            Spacer()
            HStack {
                Spacer()
                Image("apple")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("apple")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("apple")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            Spacer()
            
            Button("Spin") {
                
                        }
                        // Set padding for all edges
                        .padding()
                        // Then adjust the left and right padding to be bigger
                        .padding([.leading, .trailing], 40)
                        .foregroundColor(.white)
                        .background(Color(.systemPink))
                        .cornerRadius(25)
                        .font(.system(size: 18, weight: .bold, design: .default))
                Spacer()
        }.background(LinearGradient(gradient: Gradient(colors: [Color("backGradTop"), Color("backGradBot")]), startPoint: .top, endPoint: .bottom))
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
