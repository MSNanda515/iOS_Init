//
//  RecipeHighlightsView.swift
//  RecipeList
//
//  Created by Meharpreet Singh Nanda on 2021-08-23.
//

import SwiftUI

struct RecipeHighlightsView: View {
    var allHighlights = ""
    
    init(highlights:[String]) {
        // Loop through the highlights and build the string
        for index in 0..<highlights.count {
            // if the last item don't add comma
            if index == highlights.count - 1 {
                allHighlights += highlights[index]
            }
            else {
                allHighlights += highlights[index] + ", "
            }
        }
    }
    var body: some View {
        Text(allHighlights)
    }
}

struct RecipeHighlightsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeHighlightsView(highlights: ["test", "test2", "Test3"])
    }
}
