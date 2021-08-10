//
//  ContentView.swift
//  Slots
//
//  Created by Meharpreet Singh Nanda on 2021-08-10.
//

import SwiftUI

struct ContentView: View {
    @State var credits = 1025 // To keep track of score
    // To keep track of the images displayed
    let images = ["apple", "cherry", "star"]
    @State var im1 = 0
    @State var im2 = 0
    @State var im3 = 0
    
    var body: some View {
        VStack {
            Spacer()
            Text("SwiftUI Slots!")
                .font(.largeTitle)
            Text("Credits: " + String(credits))
            Spacer()
            HStack {
                Spacer()
                Image(images[im1])
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image(images[im2])
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(images[im3])
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            Spacer()
            
            Button("Spin") {
                credits -= 100
                im1 = Int.random(in: 0...2)
                im2 = Int.random(in: 0...2)
                im3 = Int.random(in: 0...2)
                if (im1 == im2) && (im2 == im3){
                    credits += 300
                }
                
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
