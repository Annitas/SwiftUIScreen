
import SwiftUI

struct SelectedDocCardView: View {
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
                Images.arrowRight
                    .foregroundColor(AllColors().basicTextColor)
                    .font(.system(size: 25))
                Spacer()
            }
            Divider()
                .background(Color.white)
            HStack {
                Images.calendar
                    .foregroundColor(AllColors().basicTextColor)
                Text("Sunday, 12 June")
                    .font(.system(size: 15, weight: .light, design: .default))
                    .foregroundColor(AllColors().basicTextColor)
                Spacer()
                Images.clockImage
                    .foregroundColor(AllColors().basicTextColor)
                Text("11:00 - 12:00 AM")
                    .font(.system(size: 15, weight: .light, design: .default))
                    .foregroundColor(AllColors().basicTextColor)
            }
            .padding(8)
        }
        .background(AllColors().dateTextColor)
        .frame(height: 150)
        .padding(.horizontal, 3)
        .cornerRadius(20)
    }
}

#Preview {
    SelectedDocCardView()
}
