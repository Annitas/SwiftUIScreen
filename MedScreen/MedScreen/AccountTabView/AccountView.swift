
import SwiftUI

struct AccountView: View {
    var body: some View {
        VStack{
            Image("avatar")
            
            HStack {
                Text("John Nolan")
                    .font(.title2)
                Spacer()
                Text("24 years old")
                    .font(.title2)
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    AccountView()
}
