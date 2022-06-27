//
//  NextQuestionView.swift
//  Friends Quiz
//
//  Created by Matthew Lock on 24/06/2022.
//

import SwiftUI

struct BottomTextView: View {
    
    let str: String
    let onClick: () -> Void
    
    var body: some View {
        
        HStack {
            Spacer()
            Button {
                onClick()
            } label: {
                Text(str)
                    .font(.custom(FriendsFont().fontName, size: 30))
                    .foregroundColor(.black)
                    .padding()
            }

            Spacer()
                
        }
        .background(.yellow)
    }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "Next Question") {}
    }
}
