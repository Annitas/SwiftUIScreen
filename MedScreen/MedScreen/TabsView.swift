
import SwiftUI

struct TabsView: View {
    var body: some View {
        TabView {
            HomeScreenView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            CalendarTab()
                .tabItem {
                    Label("Calendar", systemImage: "calendar")
                }
            ChatView()
                .tabItem {
                    Label("Chat", systemImage: "message")
                }
            AccountView()
                .tabItem {
                    
                    Label("Account", systemImage: "person.fill")
                }
        }
    }    
}


