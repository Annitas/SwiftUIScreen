
import SwiftUI

struct TabsView: View {
    var body: some View {
        TabView {
            HomeScreenView()
                .tabItem {
                    Label(Typography.tabHome, systemImage: "house")
                }
            CalendarTab()
                .tabItem {
                    Label(Typography.tabCalendar, systemImage: "calendar")
                }
            ChatView()
                .tabItem {
                    Label(Typography.tabChat, systemImage: "message")
                }
            AccountView()
                .tabItem {
                    
                    Label(Typography.tabAccount, systemImage: "person.fill")
                }
        }
    }    
}


