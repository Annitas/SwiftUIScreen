
import SwiftUI

struct GreetingView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Hello")
                    .foregroundColor(.secondary)
                Text("Hi James")
                    .font(.system(size: 25, weight: .bold, design: .default))
            }
            Spacer()
            Image("avatar")
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .overlay{
                    Circle().stroke(.gray, lineWidth: 2)
                }
                .shadow(radius: 7)
        }
    }
}

#Preview {
    GreetingView()
}
