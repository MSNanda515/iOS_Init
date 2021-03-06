//
//  ContentView.swift
//  HelloWorld
//
//  Created by Meharpreet Singh Nanda on 2021-08-07.
//

import SwiftUI

struct ContentView: View {
    
    @State var items:[Int] = []
    
    var body: some View {
        
        VStack {
            List(items, id: \.self) {item in
                Text(String(item))
            }
            Button("Add to List", action: {
                var randInt:Int
                repeat {
                    randInt = Int.random(in: 1...7)
                    items.append(randInt)
                } while randInt != 7
            })
            Button("Increment List") {
                for index in 0...items.count-1 {
                    items[index] += 1
                }
            }
            Button("Clear") {
                items = []
            }
        }
        
//        Learning Navigation
//        NavigationView {
//            List(items, id: \.self) { item in
//                NavigationLink(
//                    destination: Text("Destination"),
//                    label: {
//                        Text(item)
//                    })
//            }
//            .navigationTitle(Text("MY LIST"))
//        }
                   
        // Basic Concepts
//        VStack {
//            Spacer()
//
////            ZStack {
////                Image("toronto")
////                    .cornerRadius(20)
////                    .blur(radius: 1.1)
////                VStack {
////                    Text("CN Tower")
////                        .font(.largeTitle)
////                        .padding([.top, .leading, .trailing])
////                    Text("Toronto")
////                        .font(.caption)
////                        .padding([.leading, .bottom, .trailing])
////                }
////                .background(Color.black.opacity(0.83))
////                .foregroundColor(.white)
////                .cornerRadius(20)
////
////            }
////            .padding()
////            Spacer()
//////            ZStack {
//////                Image("london")
//////                    .cornerRadius(20)
//////                    .blur(radius: 1.1)
//////                VStack {
//////                    Text("Big Ben")
//////                        .font(.largeTitle)
//////                        .padding([.top, .leading, .trailing])
//////                    Text("London")
//////                        .font(.caption)
//////                        .padding([.leading, .bottom, .trailing])
//////                }
//////                .background(Color.black.opacity(0.83))
//////                .foregroundColor(.white)
//////                .cornerRadius(20)
//////
//////            }
////            Spacer()
////            // The thing like the arrow function is called closure
////            Button("But1", action: {
////                print("Button 1")
////            })
////            // Button view with trailing closure
////            Button("But2") {
////                print("Button 2")
////            }
////            // Button instance with label image
////            Button(action: {
////                print("Button 3")
////            }, label: {
////                HStack {
////                    // Uses the SF images already available in Xcode
////                    Image(systemName: "pencil")
////                    Text("Button3")
////                }
////
////
////            })
//
////
//
//        } // End VStack
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
