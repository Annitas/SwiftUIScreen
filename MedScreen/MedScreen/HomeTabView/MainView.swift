
import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading) {
                GreetingView()
                BlueDocCardView()
                SearchView()
                CircleMenuView()
                Spacer()
                DoctorsCardView()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
