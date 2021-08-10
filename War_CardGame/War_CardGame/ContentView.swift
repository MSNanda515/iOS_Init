//
//  ContentView.swift
//  War_CardGame
//
//  Created by Meharpreet Singh Nanda on 2021-08-08.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        
        VStack {
            Spacer()
            Image("logo")
            Spacer()
            HStack {
                Spacer()
                Image(playerCard)
                Spacer()
                Image(cpuCard)
                Spacer()
            }
            Spacer()
            
            Button(action: {
                // Generate a random no between 2 and 14
                let playerRand = Int.random(in: 2...14)
                let cpuRand = Int.random(in: 2...14)
                // Update the cards
                playerCard = "card" + String(playerRand)
                cpuCard = "card" + String(cpuRand)

                // Update the score
                if (playerRand > cpuRand){
                    playerScore += 1
                }
                else if (cpuRand > playerRand) {
                    cpuScore += 1
                }
                else {
                    playerScore += 1
                    cpuScore += 1
                }
//                playerScore += 1
//                cpuScore += 1
            }, label: {
                Image("dealbutton")
            })
            
            Spacer()
            HStack {
                Spacer()
                VStack {
                    Text("Player")
                    Text(String(playerScore))
                        .padding(.top)
                }
                Spacer()
                VStack {
                    Text("CPU")
                    Text(String(cpuScore))
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
