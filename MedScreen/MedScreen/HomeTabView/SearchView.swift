
import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "magnifyingglass.circle")
                    .foregroundColor(AllColors().gray)
                    .font(.system(size: 25))
                Text("Search doctor or health issue")
                    .font(.system(size: 15, weight: .light, design: .default))
                    .foregroundColor(AllColors().searchTextColor)
                Spacer()
            }
            .padding(8)
        }
        .background(AllColors().backgroundSearchColor)
        .frame(width: UIScreen.main.bounds.width - 35,
               height: 40)
        .cornerRadius(10)
    }
}

#Preview {
    SearchView()
}
