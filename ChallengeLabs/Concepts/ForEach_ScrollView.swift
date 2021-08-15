
import SwiftUI

struct ContentView: View {
    // Reference the view model
    var array = ["Pizza", "Burrito", "Sushi"]
    var body: some View {
      VStack {
        ForEach(array, id: \.self) {e in
          Text(r)
        }
        ScrollView { // It scrolls if it is needed
          ForEach(0..<array.count, id: \.self) {index in
          Text(array[index])
        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
