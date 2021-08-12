//
//  ContentView.swift
//  PlayingCards
//
//  Created by Meharpreet Singh Nanda on 2021-08-11.
//

import SwiftUI

struct Card {
    var card:Int
    var suit:String
    init (cardVal:Int, suitVal:String) {
        card = cardVal
        suit = suitVal
    }
    init (cardVal:Int, suitVal:Int) {
        card = cardVal
        let suites = ["Spades", "Clubs", "Hearts", "Diamonds"]
        suit = suites[suitVal]
    }
    
    public func suitNo() -> Int{
        let suites = ["Spades", "Clubs", "Hearts", "Diamonds"]
        for i in 0...3 {
            if suites[i] == suit {
                return i
            }
        }
        return -1
    }
    
    public func getCard() ->String {
        let specialName = [
            1: "Ace", 11: "Jack", 12: "Queen", 13: "King"
        ]
        if let val = specialName[card] {
            return val
        }
        return String(card)
    }
}


struct ContentView: View {
    @State var deck:[Card] = [Card]()
    @State var label:String = "Start Playing"
    var body: some View {
        
        VStack {
            Text(label)
                .padding()
            
            HStack {
                Button("bu1") {
                    let cardNo = Int.random(in: 1...13)
                    let cardSuit = Int.random(in: 0...3)
                    var flag = 0
                    for cardDeck in deck {
                        if (cardDeck.card == cardNo) && cardDeck.suitNo() == cardSuit {
                            label = "Generated Duplicate Card"
                            flag = 1
                        }
                    }
                    if flag == 0 {
                        let newCard = Card(cardVal: cardNo, suitVal: cardSuit)
                        deck.append(newCard)
                        label = """
                                Generated a \(newCard.getCard()) of \(newCard.suit)
                                """
                    }
                }
                Button("bu2") {
                    let drawnCard = Int.random(in: 0...(deck.count - 1))
                    label = "Drew a \(deck[drawnCard].getCard()) of \(deck[drawnCard].suit)"
                }
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
