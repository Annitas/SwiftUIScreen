
import SwiftUI

enum ChatMessageDirection {
    case left
    case right
}

struct ChatMessageView: View {
    let message: String
    let direction: ChatMessageDirection
    
    var body: some View {
        Text(message)
            .padding()
            .background(AllColors.blue)
            .foregroundColor(AllColors.basicTextColor)
            .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
            .listRowSeparator(.hidden)
            .overlay(alignment: direction == .left ? .bottomLeading : .bottomTrailing) {
                Image(systemName: "arrowtriangle.down.fill")
                    .font(.title)
                    .rotationEffect(.degrees(direction == .left ? 45 :  -45))
                    .offset(x: direction == .left ? -10 : 10,
                            y: 10)
                    .foregroundColor(.blue)
            }
    }
}

struct ChatView: View {
    let messages = ["Hello!", "So how do I make an appointment on your couch?", "Hiiii"]
    
    var body: some View {
        List(messages, id: \.self) { message in
            ChatMessageView(message: message, direction: .left)
        }.listStyle(.plain)
            
    }
}

#Preview {
    ChatView()
}
