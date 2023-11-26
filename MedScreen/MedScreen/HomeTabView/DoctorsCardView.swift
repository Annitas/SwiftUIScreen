

import SwiftUI

struct DoctorsCardView: View {
    let doctorImage: String
    var body: some View {
        //Near doctor
        Text("Near Doctor")
            .font(.system(size: 20, weight: .bold, design: .default))
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
                    Text("Dr. Joseph Basito")
                        .foregroundColor(AllColors().black)
                        .font(.system(size: 20, weight: .bold, design: .default))
                    Text("Dental Specialist")
                        .foregroundColor(AllColors().searchTextColor)
                        .font(.system(size: 16, weight: .light, design: .default))
                }
                Images.mapCircle
                    .foregroundColor(AllColors().black)
                    .font(.system(size: 20))
                Text("1.2 km")
                    .foregroundColor(AllColors().black)
                    .font(.system(size: 13, weight: .light, design: .default))
            }
            .padding(8)
            Divider()
                .background(Color.gray)
            HStack {
                Images.clockImage
                    .foregroundColor(AllColors().orange)
                Text("4,8 (120 Reviews)")
                    .font(.system(size: 15, weight: .light, design: .default))
                    .foregroundColor(AllColors().orange)
                Spacer()
                Images.clockImage
                    .foregroundColor(AllColors().blue)
                Text("11:00 - 12:00 AM")
                    .font(.system(size: 15, weight: .light, design: .default))
                    .foregroundColor(AllColors().blue)
            }
            .padding(8)
        }
        .background(AllColors().cardColor)
        .frame(width: UIScreen.main.bounds.width - 35,
               height: 130)
        .cornerRadius(10)
        .shadow(radius: 7)
        
        
    }
}

#Preview {
    DoctorsCardView(doctorImage: "dentalCat")
}
