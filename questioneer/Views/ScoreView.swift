//
//  ScoreView.swift
//  questioneer
//
//  Created by Eugene Ned on 04.01.2022.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Final score:")
                    .font(.body)
                Text("\(viewModel.percentage)%")
                    .font(.system(size: 50))
                    .bold()
                    .padding()
                Spacer()
                HStack{
                    Text("\(viewModel.correctGuesses)✅")
                    Text("\(viewModel.incorrectGuesses)❌")
                }.font(.system(size: 30))
                Spacer(minLength: 500)
                NavigationLink(
                    destination: GameView(),
                    label: {
                        BottomTextView(str: "Play again")
                    })
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
    }
}
