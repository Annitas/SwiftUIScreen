
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
                Text(Typography.nearDoctorTitle)
                    .font(.system(size: 20, weight: .bold, design: .default))
                DoctorsCardView(doctorImage: "dentalCat", 
                                doctorName: Typography.generalDoctorName,
                                doctorType: Typography.generalDoctor)
                DoctorsCardView(doctorImage: "doctorCat",
                                doctorName: Typography.dentalDoctorName,
                                doctorType: Typography.dentalDoctor)
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
