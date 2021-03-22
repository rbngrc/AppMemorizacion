//
//  ContentView.swift
//  Memorize
//
//  Created by Ruben Garcia on 5/3/21.
//

import SwiftUI

struct ContentView: View {
    var viewGame: EmojiMemoryGame
    
    var body: some View {
        HStack {
            ForEach(viewGame.cards) { card in
                CardView(card: card).onTapGesture{
                    viewGame.choose(card: card)
                }
            }
        }
            .font(Font.largeTitle)
            .foregroundColor(.orange)
            .padding()
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View{
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 3)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10)
                    .fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewGame: EmojiMemoryGame())
    }
}
