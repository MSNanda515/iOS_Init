//
//  TabViewsM4C3.swift
//  HelloWorld
//
//  Created by Meharpreet Singh Nanda on 2021-08-19.
//

import SwiftUI

struct TabViewsM4C3: View {
    @State var tagIndex:Int = 0
    var body: some View {
        TabView(selection: $tagIndex) {
            Text("This tab's tag is 0")
                .tabItem {
                    VStack {
                        Image(systemName: "tortoise.fill")
                        Text("Tab 1")
                    }
                    Text("Hello")
                }
                .tag(0)
            Button(action: {
                tagIndex = 2
            }, label: {
                Text("Take me tab 3!")
            })
            .tabItem {
                VStack {
                    Image(systemName: "arrowshape.turn.up.forward")
                    Text("Take me to tab 3")
                }
            }
            .tag(1)
            
            ScrollView {
                ForEach(1...100, id: \.self) { index in
                    HStack {
                        Text("This is tab 3!")
                        Spacer()
                    }
                    .padding(.leading)
                    
                    
                }
            }
            .tabItem {
                VStack {
                    Image(systemName: "hands.clap.fill")
                    Text("Tab 3")
                }
            }
            .tag(2)
        }
    }
}

struct TabViewsM4C3_Previews: PreviewProvider {
    static var previews: some View {
        TabViewsM4C3()
    }
}
