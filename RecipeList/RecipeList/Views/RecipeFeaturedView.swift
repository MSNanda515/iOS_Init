//
//  RecipeFeaturedView.swift
//  RecipeList
//
//  Created by Meharpreet Singh Nanda on 2021-08-20.
//

import SwiftUI

struct RecipeFeaturedView: View {
    
    @EnvironmentObject var model:RecipeModel
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            Text("Featured Recipes")
                .bold()
                .font(.largeTitle )
                .padding(.top, 40)
            
            GeometryReader {g in
                TabView {
                    // Loop through each recipe
                    ForEach(0..<model.recipes.count) {index in
                        if (model.recipes[index].featured == true) {
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.white)
                                    
                                
                                VStack {
                                    Image(model.recipes[index].image)
                                        .resizable()
                                        .clipped()
                                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                    Text(model.recipes[index].name)
                                }
                            }
                            .frame(width: g.size.width - 40, height: g.size.height-100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(15)
                            .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5 ), radius: 10, x: -5, y: 5)
                            
                        }
                    }
                }
                // This makes the tab strle as Page tab
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
        
            VStack(alignment: .leading, spacing: 10 ) {
                Text("Preparation Time")
                    .font(.headline)
                Text("1 hour")
                Text("Highlights")
                    .font(.headline)
                Text("Healthy, Hearty")
            }
        }
        .padding([.leading, .bottom])
        
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
            .environmentObject(RecipeModel())
    }
}
 
