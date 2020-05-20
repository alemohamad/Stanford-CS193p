//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Ale Mohamad on 20/05/2020.
//  Copyright © 2020 Ale Mohamad. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private(set) var model: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = [
            "👻", "🎃", "🕷", "🦇", "🦉", "🧛‍♂️",
            "🧚‍♀️", "🦄", "🦹", "🦸‍♀️", "👷‍♀️", "🧝‍♂️"
        ].shuffled()
        // Extra Credit: larger set of random emoji
        let randomTotal = Int.random(in: 4...5)
        return MemoryGame<String>(numberOfPairsOfCards: randomTotal) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    var shuffledCards: Array<MemoryGame<String>.Card> {
        cards.shuffled()
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
