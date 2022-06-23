//
//  ContentView.swift
//  Friends Quiz
//
//  Created by Matthew Lock on 23/06/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("DefaultColor")
                .ignoresSafeArea()
            VStack {
                Image("title")
                    .resizable()
                    .ignoresSafeArea()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                Text("info")
                    .font(.custom(FriendsFont().fontName, size: 25))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
