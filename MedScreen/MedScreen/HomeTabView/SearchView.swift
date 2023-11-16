
import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "magnifyingglass.circle")
                    .foregroundColor(Color.gray)
                    .font(.system(size: 25))
                Text("Search doctor or health issue")
                    .font(.system(size: 15, weight: .light, design: .default))
                    .foregroundColor(Color("SearchText"))
                Spacer()
            }
            .padding(8)
        }
        .background(Color("Magnifyer"))
        .frame(width: UIScreen.main.bounds.width - 35,
               height: 40)
        .cornerRadius(10)
    }
}

#Preview {
    SearchView()
}
