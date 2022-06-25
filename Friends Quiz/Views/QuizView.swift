//
//  QuizView.swift
//  Friends Quiz
//
//  Created by Matthew Lock on 23/06/2022.
//

import SwiftUI

struct QuizView: View {
    
    let viewModel = GamevViewModel()
    
    @State private var guessedIndex: Int?
    
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
                Text("Question 1/3")
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
                            guessedIndex = index
                        }
                            .background(buttonColor(at: index))
                            .cornerRadius(25)
                            .overlay(RoundedRectangle(cornerRadius: 25)
                                        .stroke(.black, lineWidth: 3))
                            .disabled(guessedIndex != nil)
                    }
                }
                if guessedIndex != nil {
                    BottomTextView(str: "Next Question", onClick: {})
                }
                Spacer()
            }
        }
    }
    
    func buttonColor(at buttonIndex: Int) -> Color {
        guard let userSelection = guessedIndex, userSelection == buttonIndex else {
            return .yellow
        }
        if userSelection == viewModel.correctAnswerIndex {
            return .green
        } else {
            return .red
        }
    }
}


struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
