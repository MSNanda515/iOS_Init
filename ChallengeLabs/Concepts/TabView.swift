@State var tabIndex = 0

var body: some View {
	TabView(selection: $tabIndex) { // $ Binded since the value can be changed by the user
		Text("This is tab 1")
			.tabItem {
				VStack {
					Image(systemName: "pencil")
					Text("Tab1")
				}
			}
			.tag(0)
		VStack {
			Text("This is tab 2")
			Text("This is some more text")
		}
		.tabItem{
			VStack {
				Image(systemName: "star")
				Text("Tab 2 ")
			}
		}
		.tag(1)
	}
}