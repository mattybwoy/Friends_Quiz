//
//  ResultView.swift
//  Friends Quiz
//
//  Created by Matthew Lock on 27/06/2022.
//

import SwiftUI

struct ResultView: View {
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            Color("PrimaryColor")
                .ignoresSafeArea()
            VStack {
                Image("title")
                    .resizable()
                    .ignoresSafeArea()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                Text("quiz")
                    .font(.custom(FriendsFont().fontName, size: 40))
                    .offset(x: 0, y: -20)
                Spacer()
                Text("Score: \(viewModel.progressText)")
                Text("Your Rating")
                Spacer()
                BottomTextView(str: "Try Again") {
                    QuizView()
                }
            }

        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
