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
                Spacer()
                Image("frame")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    Spacer()
                Image("title")
                    .resizable()
                    .ignoresSafeArea()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal)
                Text("quiz")
                    .font(.custom(FriendsFont().fontName, size: 60))
                    .offset(x: 0, y: -20)
                Spacer()
                Button {
                    print("tapped")
                } label: {
                    Text("Begin!")
                        .padding(.horizontal)
                        .font(.custom(FriendsFont().fontName, size: 40))
                        .foregroundColor(.black)
                }
                .padding()
                .background(.yellow)
                .cornerRadius(25)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
