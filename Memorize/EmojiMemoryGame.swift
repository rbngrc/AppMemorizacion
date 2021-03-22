//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Ruben Garcia on 22/3/21.
//

import SwiftUI

class EmojiMemoryGame {
    private(set) var game: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃","🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the model
    
    var cards: Array<MemoryGame<String>.Card>{
        return game.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card)  {
        game.choose(card: card)
    }
}
