//
//  RecipeFeaturedView.swift
//  RecipeList
//
//  Created by Meharpreet Singh Nanda on 2021-08-20.
//

import SwiftUI

struct RecipeFeaturedView: View {
    
    @EnvironmentObject var model:RecipeModel
    @State var isDetailViewShowing = false
    @State var tabSelectedIndex = 0
    
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            Text("Featured Recipes")
                .bold()
                .font(Font.custom("Avenir Heavy", size: 24))
                .padding(.top, 40)
            
            GeometryReader {g in
                TabView(selection: $tabSelectedIndex) {
                    // Loop through each recipe
                    ForEach(0..<model.recipes.count) {index in
                        if (model.recipes[index].featured == true) {
                            Button(action: {
                                isDetailViewShowing = !isDetailViewShowing
                            }, label: {
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
                            })
                            .tag(index)
                            .sheet(isPresented: $isDetailViewShowing, content: {
                                RecipeDetailView(recipe: model.recipes[index])
                            })
                            .buttonStyle(PlainButtonStyle())
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
                    .font(Font.custom("Avenir Heavy", size: 16))
                Text(model.recipes[tabSelectedIndex].prepTime)
                Text("Highlights")
                    .font(Font.custom("Avenir Heavy", size: 16))
                RecipeHighlightsView(highlights: model.recipes[tabSelectedIndex].highlights)
            }
        }
        .onAppear(perform: {
            setFeaturedIndex()
        })
        .padding([.leading, .bottom])
        
    }
    
    func setFeaturedIndex() {
        // Find the first recipe that is featured
        let index = model.recipes.firstIndex { recipe in
            return recipe.featured
        }
        tabSelectedIndex = index ?? 0
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
            .environmentObject(RecipeModel())
    }
}
 
