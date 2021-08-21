//
//  PickerComp.swift
//  Components
//
//  Created by Meharpreet Singh Nanda on 2021-08-21.
//

import SwiftUI

struct PickerComp: View {
    @State var selectedIndex = 1
    var body: some View {
        VStack {
            // The default style is the wheel style
            Picker("Tap Me", selection: $selectedIndex) {
                Text("Option 1").tag(1)
                Text("Option 2").tag(2)
                Text("Option 3").tag(3)
            
            // Use menu style to have a menu
            // .pickerStyle(MenuPickerStyle())
            .pickerStyle(SegmentedPickerStyle())
            Text("You have selected \(selectedIndex)")
        }
    }
}

struct PickerComp_Previews: PreviewProvider {
    static var previews: some View {
        PickerComp()
    }
}
