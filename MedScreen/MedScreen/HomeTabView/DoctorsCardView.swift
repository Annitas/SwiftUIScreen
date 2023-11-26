

import SwiftUI

struct DoctorsCardView: View {
    let doctorImage: String
    let doctorName: String
    let doctorType: String
    
    var body: some View {
        //Near doctor
        VStack {
            HStack() {
                Image(doctorImage)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .overlay{
                        Circle().stroke(.secondary, lineWidth: 2)
                    }
                    .shadow(radius: 7)
                VStack(alignment: .leading) {
                    Text(doctorName)
                        .foregroundColor(AllColors.black)
                        .font(.system(size: 20, weight: .bold, design: .default))
                    Text(doctorType)
                        .foregroundColor(AllColors.searchTextColor)
                        .font(.system(size: 16, weight: .light, design: .default))
                }
                Images.mapCircle
                    .foregroundColor(AllColors.black)
                    .font(.system(size: 20))
                Text(Typography.distance)
                    .foregroundColor(AllColors.black)
                    .font(.system(size: 13, weight: .light, design: .default))
            }
            .padding(8)
            Divider()
                .background(Color.gray)
            HStack {
                Images.clockImage
                    .foregroundColor(AllColors.orange)
                Text(Typography.reviews)
                    .font(.system(size: 15, weight: .light, design: .default))
                    .foregroundColor(AllColors.orange)
                Spacer()
                Images.clockImage
                    .foregroundColor(AllColors.blue)
                Text(Typography.openHours)
                    .font(.system(size: 15, weight: .light, design: .default))
                    .foregroundColor(AllColors.blue)
            }
            .padding(8)
        }
        .background(AllColors.cardColor)
        .frame(width: UIScreen.main.bounds.width - 35,
               height: 130)
        .cornerRadius(10)
        .shadow(radius: 7)
        
        
    }
}

#Preview {
    DoctorsCardView(doctorImage: "dentalCat", doctorName: Typography.dentalDoctorName, doctorType: Typography.dentalDoctor)
}
