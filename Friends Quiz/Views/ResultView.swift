//
//  ResultView.swift
//  Friends Quiz
//
//  Created by Matthew Lock on 27/06/2022.
//

import SwiftUI

struct ResultView: View {

    let viewModel: ResultsViewModel
    
    var body: some View {
        NavigationView {
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
                    Text("Score: \(viewModel.selectionCount.0) / \(viewModel.selectionCount.0 + viewModel.selectionCount.1)")
                        .font(.custom(FriendsFont().fontName, size: 30))
                        .padding()
                    Text(viewModel.finalPercentText)
                        .font(.custom(FriendsFont().fontName, size: 30))
                        .padding()
                    Text(viewModel.letterGrade)
                        .font(.custom(FriendsFont().fontName, size: 20))
                        .padding()
                    Spacer()
                    Spacer()
                    NavigationLink {
                        QuizView()
                    } label: {
                        BottomTextView(str: "Try again")
                            .padding(.bottom)
                    }
                }
            }
        }
        .navigationBarHidden(true)

    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ResultView(viewModel: ResultsViewModel(selectionCount: (3,1)))
        }
    }
}
