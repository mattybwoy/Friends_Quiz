//
//  QuizView.swift
//  Friends Quiz
//
//  Created by Matthew Lock on 23/06/2022.
//

import SwiftUI

struct QuizView: View {
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
                    .font(.custom(FriendsFont().fontName, size: 30))
                    .padding()
                Text("Question")
                Spacer()
                VStack(alignment: .center, spacing: 20) {
                    AnswerView(answerText: "answer 1")
                    AnswerView(answerText: "answer 2")
                    AnswerView(answerText: "answer 3")
                    AnswerView(answerText: "answer 4")
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
