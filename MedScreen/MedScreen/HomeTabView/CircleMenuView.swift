
import SwiftUI

struct CircleMenuView: View {
    var body: some View {
        HStack {
            let circleSize = UIScreen.main.bounds.width/4 - 15
            VStack {
                ZStack{
                    Circle()
                        .fill(Color("Magnifyer"))
                        .frame(width: circleSize, height: circleSize)
                    Image(systemName: "bubbles.and.sparkles")
                        .resizable()
                        .frame(width: circleSize/2, height: circleSize/2)
                        .shadow(radius: 7)
                        .foregroundColor(Color("DateBlue"))
                }
                Text("Covid 19")
                    .font(.system(size: 15, weight: .light, design: .default))
                    .foregroundColor(Color("SearchText"))
            }
            VStack {
                ZStack{
                    Circle()
                        .fill(Color("Magnifyer"))
                        .frame(width: circleSize, height: circleSize)
                    Image(systemName: "brain.head.profile")
                        .resizable()
                        .frame(width: circleSize/2, height: circleSize/2)
                        .shadow(radius: 7)
                        .foregroundColor(Color("DateBlue"))
                }
                Text("Doctor")
                    .font(.system(size: 15, weight: .light, design: .default))
                    .foregroundColor(Color("SearchText"))
            }
            
            VStack {
                ZStack{
                    Circle()
                        .fill(Color("Magnifyer"))
                        .frame(width: circleSize, height: circleSize)
                    Image(systemName: "pills.fill")
                        .resizable()
                        .frame(width: circleSize/2, height: circleSize/2)
                        .shadow(radius: 7)
                        .foregroundColor(Color("DateBlue"))
                }
                Text("Medicine")
                    .font(.system(size: 15, weight: .light, design: .default))
                    .foregroundColor(Color("SearchText"))
            }
            VStack {
                ZStack{
                    Circle()
                        .fill(Color("Magnifyer"))
                        .frame(width: circleSize, height: circleSize)
                    Image(systemName: "cross.case.fill")
                        .resizable()
                        .frame(width: circleSize/2, height: circleSize/2)
                        .shadow(radius: 7)
                        .foregroundColor(Color("DateBlue"))
                }
                Text("Hospital")
                    .font(.system(size: 15, weight: .light, design: .default))
                    .foregroundColor(Color("SearchText"))
            }
        }
    }
}

#Preview {
    CircleMenuView()
}
