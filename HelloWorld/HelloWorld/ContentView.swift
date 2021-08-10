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
            
            ZStack {
                Image("toronto")
                    .cornerRadius(20)
                    .blur(radius: 1.1)
                VStack {
                    Text("CN Tower")
                        .font(.largeTitle)
                        .padding([.top, .leading, .trailing])
                    Text("Toronto")
                        .font(.caption)
                        .padding([.leading, .bottom, .trailing])
                }
                .background(Color.black.opacity(0.83))
                .foregroundColor(.white)
                .cornerRadius(20)
                
            }
            .padding()
            Spacer()
            ZStack {
                Image("london")
                    .cornerRadius(20)
                    .blur(radius: 1.1)
                VStack {
                    Text("Big Ben")
                        .font(.largeTitle)
                        .padding([.top, .leading, .trailing])
                    Text("London")
                        .font(.caption)
                        .padding([.leading, .bottom, .trailing])
                }
                .background(Color.black.opacity(0.83))
                .foregroundColor(.white)
                .cornerRadius(20)
                
            }
            Spacer()
            // The thing like the arrow function is called closure
            Button("But1", action: {
                print("Button 1")
            })
            // Button view with trailing closure
            Button("But2") {
                print("Button 2")
            }
            // Button instance with label image
            Button(action: {
                print("Button 3")
            }, label: {
                HStack {
                    // Uses the SF images already available in Xcode
                    Image(systemName: "pencil")
                    Text("Button3")
                }
                
            })
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
