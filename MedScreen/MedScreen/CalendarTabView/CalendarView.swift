

import SwiftUI

struct CalendarView: UIViewRepresentable {
    let interval: DateInterval
    
    func makeUIView(context: Context) -> some UIView {
        let view = UICalendarView()
        view.calendar = Calendar(identifier: .gregorian)
        view.availableDateRange = interval
        view.frame = CGRect(x: 0, y: 0,
                            width: Int(UIScreen.main.bounds.width),
                            height: Int(UIScreen.main.bounds.height)/2)
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}

struct CalendarTab: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Calendar")
//                .foregroundColor(Color("TextColor"))
                .font(.system(size: 24, weight: .bold, design: .default))
            .padding(8)
            CalendarView(interval: DateInterval(start: .distantPast, end: .distantFuture))
            Spacer()
        }
    }
}

#Preview {
    CalendarTab()
}
