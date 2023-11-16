
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainView()
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
            Text("Account")
                .tabItem {
                    
                    Label("Account", systemImage: "person.fill")
                }
        }
    }    
}


