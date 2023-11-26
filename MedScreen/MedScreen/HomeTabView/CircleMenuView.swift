
import SwiftUI

struct CircleMenuView: View {
    var body: some View {
        HStack {
            CircleCategory(menuText: Typography.circleCovid, menuImage: Images.bubbles)
            CircleCategory(menuText: Typography.circleDoctor, menuImage: Images.brainHead)
            CircleCategory(menuText: Typography.circleMedicine, menuImage: Images.pills)
            CircleCategory(menuText: Typography.circleHospital, menuImage: Images.crossCase)
        }
    }
}

struct CircleCategory: View {
    let circleSize = UIScreen.main.bounds.width/4 - 15
    let menuText: String
    let menuImage: Image
    var body: some View {
        VStack {
            ZStack{
                Circle()
                    .fill(AllColors.backgroundSearchColor)
                    .frame(width: circleSize, height: circleSize)
                menuImage
                    .resizable()
                    .frame(width: circleSize/2, height: circleSize/2)
                    .shadow(radius: 7)
                    .foregroundColor(AllColors.dateTextColor)
            }
            Text(menuText)
                .font(.system(size: 15, weight: .light, design: .default))
                .foregroundColor(AllColors.searchTextColor)
        }
    }
}

#Preview {
    CircleMenuView()
}
