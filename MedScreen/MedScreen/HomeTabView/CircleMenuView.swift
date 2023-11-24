
import SwiftUI

struct CircleMenuView: View {
    var body: some View {
        HStack {
            let circleSize = UIScreen.main.bounds.width/4 - 15
            VStack {
                ZStack{
                    Circle()
                        .fill(AllColors().backgroundSearchColor)
                        .frame(width: circleSize, height: circleSize)
                    Image(systemName: "bubbles.and.sparkles")
                        .resizable()
                        .frame(width: circleSize/2, height: circleSize/2)
                        .shadow(radius: 7)
                        .foregroundColor(AllColors().dateTextColor)
                }
                Text("Covid 19")
                    .font(.system(size: 15, weight: .light, design: .default))
                    .foregroundColor(AllColors().searchTextColor)
            }
            VStack {
                ZStack{
                    Circle()
                        .fill(AllColors().backgroundSearchColor)
                        .frame(width: circleSize, height: circleSize)
                    Image(systemName: "brain.head.profile")
                        .resizable()
                        .frame(width: circleSize/2, height: circleSize/2)
                        .shadow(radius: 7)
                        .foregroundColor(AllColors().dateTextColor)
                }
                Text("Doctor")
                    .font(.system(size: 15, weight: .light, design: .default))
                    .foregroundColor(AllColors().searchTextColor)
            }
            
            VStack {
                ZStack{
                    Circle()
                        .fill(AllColors().backgroundSearchColor)
                        .frame(width: circleSize, height: circleSize)
                    Image(systemName: "pills.fill")
                        .resizable()
                        .frame(width: circleSize/2, height: circleSize/2)
                        .shadow(radius: 7)
                        .foregroundColor(AllColors().dateTextColor)
                }
                Text("Medicine")
                    .font(.system(size: 15, weight: .light, design: .default))
                    .foregroundColor(AllColors().searchTextColor)
            }
            VStack {
                ZStack{
                    Circle()
                        .fill(AllColors().backgroundSearchColor)
                        .frame(width: circleSize, height: circleSize)
                    Image(systemName: "cross.case.fill")
                        .resizable()
                        .frame(width: circleSize/2, height: circleSize/2)
                        .shadow(radius: 7)
                        .foregroundColor(AllColors().dateTextColor)
                }
                Text("Hospital")
                    .font(.system(size: 15, weight: .light, design: .default))
                    .foregroundColor(AllColors().searchTextColor)
            }
        }
    }
}

#Preview {
    CircleMenuView()
}
