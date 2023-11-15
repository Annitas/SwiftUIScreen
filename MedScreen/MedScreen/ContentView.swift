
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Hello")
                        .foregroundColor(.secondary)
                    Text("Hi James")
                        .font(.system(size: 25, weight: .bold, design: .default))
                }
                Spacer()
                Image("avatar")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .overlay{
                        Circle().stroke(.gray, lineWidth: 2)
                            }
                    .shadow(radius: 7)
            }
            VStack {
                HStack() {
                Image("avatar")
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
                            .foregroundColor(Color("TextColor"))
                            .font(.system(size: 24, weight: .bold, design: .default))
                        Text("General Doctor")
                            .foregroundColor(Color("TextColor"))
                            .font(.system(size: 20, weight: .light, design: .default))
                    }
                    Image(systemName: "arrow.right.circle")
                        .foregroundColor(Color("TextColor"))
                        .font(.system(size: 25))
                    Spacer()
                }
                Divider()
                    .background(Color.white)
                HStack {
                    Image(systemName: "calendar")
                        .foregroundColor(Color("TextColor"))
                    Text("Sunday, 12 June")
                        .font(.system(size: 15, weight: .light, design: .default))
                        .foregroundColor(Color("TextColor"))
                    Spacer()
                    Image(systemName: "clock.fill")
                        .foregroundColor(Color("TextColor"))
                    Text("11:00 - 12:00 AM")
                        .font(.system(size: 15, weight: .light, design: .default))
                        .foregroundColor(Color("TextColor"))
                }
                .padding(8)
            }
            .background(Color("DateBlue"))
            .frame(width: UIScreen.main.bounds.width - 40,
                   height: 150)
            .cornerRadius(10)
// Search
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
            .frame(width: UIScreen.main.bounds.width - 40,
                   height: 40)
            .cornerRadius(10)
            
//Circle menu
            HStack {
                let circleSize = UIScreen.main.bounds.width/4 - 18
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
            .padding()
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
