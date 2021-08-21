//
//  RestaurantMenuView.swift
//  ChallengeLabs
//
//  Created by Meharpreet Singh Nanda on 2021-08-21.
//

import SwiftUI

struct RestaurantMenuView: View {
    @State var locationIndex:Int = 0
    @State var menuIndex:Int = 0
    @State var time:Int = 0
    
    let locations = [
        "Mexico City",
        "New York City",
        "Los Angeles",
        "Toronto",
        "Chicago",
        "Houston",
        "Havana",
        "Montréal",
        "Ecatepec de Morelos",
        "Philadelphia"
    ]
    
    let menuItems = [
        "Sweet potato fries",
        "Nachos",
        "Grilled salmon salad",
        "Pad thai",
        "Fish tacos",
        "Turkey burger",
        "Poutine",
        "Potato leek soup"
    ]
    
    let times = [
        "5 pm",
        "6 pm",
        "7 pm",
        "8 pm",
        "9 pm"
    ]
    
    var body: some View {
        VStack(spacing: 80) {
            Text("Ottimo Risorante")
                .bold()
                .font(.largeTitle)
            HStack {
                Picker("Location", selection: $locationIndex) {
                    ForEach(0..<locations.count, id: \.self) {i in
                        Text(locations[i]).tag(i)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                Text(locations[locationIndex])
            }
            VStack {
                Text("Order:")
                Picker("Order", selection: $menuIndex) {
                    ForEach(0..<menuItems.count) {i in
                        Text(menuItems[i]).tag(i)
                    }
                }
            }
            
            
            VStack {
                Text("Pickup Time: ")
                Picker("Pickup Time", selection: $time) {
                    ForEach(0..<times.count, id: \.self) {i in
                        Text(times[i]).tag(i)
                    }
                }
            }
            
            .pickerStyle(SegmentedPickerStyle())
            Button("Pick for me") {
                locationIndex = .random(in: 0..<locations.count)
                menuIndex = .random(in: 0..<menuItems.count)
                time = .random(in: 0..<times.count)
            }
            
        }
        .padding()
    }
}

struct RestaurantMenuView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantMenuView()
    }
}
