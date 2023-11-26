
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
                    Text(Typography.generalDoctorName)
                        .foregroundColor(AllColors.basicTextColor)
                        .font(.system(size: 24, weight: .bold, design: .default))
                    Text(Typography.generalDoctor)
                        .foregroundColor(AllColors.basicTextColor)
                        .font(.system(size: 20, weight: .light, design: .default))
                }
                Images.arrowRight
                    .foregroundColor(AllColors.basicTextColor)
                    .font(.system(size: 25))
                Spacer()
            }
            Divider()
                .background(Color.white)
            HStack {
                Images.calendar
                    .foregroundColor(AllColors.basicTextColor)
                Text(Typography.dateDay)
                    .font(.system(size: 15, weight: .light, design: .default))
                    .foregroundColor(AllColors.basicTextColor)
                Spacer()
                Images.clockImage
                    .foregroundColor(AllColors.basicTextColor)
                Text(Typography.openHours)
                    .font(.system(size: 15, weight: .light, design: .default))
                    .foregroundColor(AllColors.basicTextColor)
            }
            .padding(8)
        }
        .background(AllColors.dateTextColor)
        .frame(height: 150)
        .padding(.horizontal, 3)
        .cornerRadius(20)
    }
}

#Preview {
    SelectedDocCardView()
}
