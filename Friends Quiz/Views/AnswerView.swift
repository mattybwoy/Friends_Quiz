//
//  AnswerView.swift
//  Friends Quiz
//
//  Created by Matthew Lock on 23/06/2022.
//

import SwiftUI

struct AnswerView: View {
    
    let answerText: String
    
    var body: some View {
    
        Button {
            print("tapped")
        } label: {
            Text(answerText)
                .padding(.horizontal)
                .font(.custom(FriendsFont().fontName, size: 22))
                .foregroundColor(Color("SecondaryColor"))
        }
        .padding()
        .background(.yellow)
        .cornerRadius(25)
        .overlay(RoundedRectangle(cornerRadius: 25)
                    .stroke(.black, lineWidth: 3)
                    
        )
    }
}

struct AnswerView_Previews: PreviewProvider {
    static var previews: some View {
        AnswerView(answerText: "Answer 1")
    }
}
