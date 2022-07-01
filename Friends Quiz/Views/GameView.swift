//
//  ContentView.swift
//  Friends Quiz
//
//  Created by Matthew Lock on 23/06/2022.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("PrimaryColor")
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
                    NavigationLink {
                        QuizView()
                    } label: {
                        Text("Begin!")
                            .padding(.horizontal)
                            .font(.custom(FriendsFont().fontName, size: 40))
                            .foregroundColor(Color("SecondaryColor"))
                    }
                    .padding()
                    .background(.yellow)
                    .cornerRadius(25)
                    .overlay(RoundedRectangle(cornerRadius: 25)
                                .stroke(.black, lineWidth: 5)
                                
                    )
                    Spacer()
                }
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
