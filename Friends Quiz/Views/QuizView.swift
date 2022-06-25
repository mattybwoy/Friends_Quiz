//
//  QuizView.swift
//  Friends Quiz
//
//  Created by Matthew Lock on 23/06/2022.
//

import SwiftUI

struct QuizView: View {
    
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
                Text(viewModel.progressText)
                    .font(.custom(FriendsFont().fontName, size: 20))
                    .padding()
                Text(viewModel.questionText)
                    .font(.custom(FriendsFont().fontName, size: 30))
                    .padding(.bottom)
                    .multilineTextAlignment(.center)
                Spacer()
                VStack(alignment: .center, spacing: 20) {
                    ForEach(viewModel.answerIndices.indices) { index in
                        AnswerView(answerText: viewModel.answerText(for: index)) {
                            viewModel.makeGuessForCurrentQuestion(at: index)
                        }
                        .background(viewModel.buttonColor(at: index))
                            .cornerRadius(25)
                            .overlay(RoundedRectangle(cornerRadius: 25)
                                        .stroke(.black, lineWidth: 3))
                            .disabled(viewModel.guessMade)
                    }
                }
                if viewModel.guessMade {
                    BottomTextView(str: "Next Question", onClick: {
                        viewModel.advanceGameState()
                    })
                }
                Spacer()
            }
        }
    }

    
}


struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
