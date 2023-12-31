
import SwiftUI

struct BlueDocCardView: View {
    var body: some View {
        VStack {
            HStack() {
                Image("doctorCat")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .overlay{
                        Circle().stroke(.secondary, lineWidth: 2)
                    }
                    .shadow(radius: 7)
                    .padding()
                VStack(alignment: .leading) {
                    Text("Dr. Imran Sayahir")
                        .foregroundColor(AllColors().basicTextColor)
                        .font(.system(size: 24, weight: .bold, design: .default))
                    Text("General Doctor")
                        .foregroundColor(AllColors().basicTextColor)
                        .font(.system(size: 20, weight: .light, design: .default))
                }
                Image(systemName: "arrow.right.circle")
                    .foregroundColor(AllColors().basicTextColor)
                    .font(.system(size: 25))
                Spacer()
            }
            Divider()
                .background(Color.white)
            HStack {
                Image(systemName: "calendar")
                    .foregroundColor(AllColors().basicTextColor)
                Text("Sunday, 12 June")
                    .font(.system(size: 15, weight: .light, design: .default))
                    .foregroundColor(AllColors().basicTextColor)
                Spacer()
                Image(systemName: "clock.fill")
                    .foregroundColor(AllColors().basicTextColor)
                Text("11:00 - 12:00 AM")
                    .font(.system(size: 15, weight: .light, design: .default))
                    .foregroundColor(AllColors().basicTextColor)
            }
            .padding(8)
        }
        .background(AllColors().dateTextColor)
        .frame(width: UIScreen.main.bounds.width - 35,
               height: 150)
        .cornerRadius(10)
    }
}

#Preview {
    BlueDocCardView()
}
