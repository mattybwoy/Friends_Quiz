//
//  AnswerView.swift
//  Friends Quiz
//
//  Created by Matthew Lock on 23/06/2022.
//

import SwiftUI

struct AnswerView: View {
    
    let answerText: String
    let onClick: () -> Void
    
    var body: some View {
    
        Button {
            onClick()
        } label: {
            Text(answerText)
                .scaledToFill()
                .padding(.horizontal)
                .font(.custom(FriendsFont().fontName, size: 22))
                .foregroundColor(Color("SecondaryColor"))
                .frame(minWidth: 100, maxWidth: 220, minHeight: 25, maxHeight: 45, alignment: .center)
                .padding()
        }

    }
}

struct AnswerView_Previews: PreviewProvider {
    static var previews: some View {
        AnswerView(answerText: "Answer 1", onClick: {})
    }
}
