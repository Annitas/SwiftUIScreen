
import SwiftUI

struct AccountView: View {
    var body: some View {
        VStack{
            Image("avatar")
            
            HStack {
                Text(Typography.personName)
                    .font(.title2)
                Spacer()
                Text(Typography.personYear)
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
