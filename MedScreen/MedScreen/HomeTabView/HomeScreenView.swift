
import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading) {
                GreetingView()
                SelectedDocCardView()
                SearchView()
                CircleMenuView()
                Spacer()
                DoctorsCardView(doctorImage: "dentalCat")
                DoctorsCardView(doctorImage: "doctorCat")
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
