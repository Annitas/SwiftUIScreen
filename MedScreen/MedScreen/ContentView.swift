//
//  ContentView.swift
//  MedScreen
//
//  Created by Anita Stashevskaya on 14.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Hello")
                        .foregroundColor(.secondary)
                    Text("Hi James")
                        .font(.title)
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
            HStack {
                Text("Hello")
                    .padding()
                Divider()
                    Spacer()
            }
            .background(Color.blue)
            .frame(width: UIScreen.main.bounds.width - 40,
                   height: 185)
            .cornerRadius(10)
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
