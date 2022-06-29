//
//  TitleView.swift
//  Friends Quiz
//
//  Created by Matthew Lock on 29/06/2022.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        Image("title")
            .resizable()
            .ignoresSafeArea()
            .aspectRatio(contentMode: .fit)
            .padding()
        Text("quiz")
            .font(.custom(FriendsFont().fontName, size: 40))
            .offset(x: 0, y: -20)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
