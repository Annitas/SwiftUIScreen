
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
                Text("Near Doctor")
                    .font(.system(size: 20, weight: .bold, design: .default))
                DoctorsCardView(doctorImage: "dentalCat", doctorName: "Dr Joseph Basito")
                DoctorsCardView(doctorImage: "doctorCat", doctorName: "Dr Imran Sayahir")
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
