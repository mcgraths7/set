//
//  Set.swift
//  Set
//
//  Created by Steven McGrath on 8/29/18.
//  Copyright © 2018 Steven McGrath. All rights reserved.
//

import Foundation

struct SetGame {
    var numberOfCards = 81
    var cards = [Card]()
    var selectedCards: [Card] {
        get {
            return cards.filter { $0.isSelected == true }
        }
        set {
            
        }
    }
    var isAMatch = false
    
    var setCount = 0
    
    init() {
        createDeck()
    }
    
    mutating func chooseCard(at index: Int) {
        var chosenCard = cards[index]
        chosenCard.select()
        if selectedCards.count == 3 {
            isAMatch = Card.checkMatch(firstCard: selectedCards[0], secondCard: selectedCards[1], thirdCard: selectedCards[2])
            if isAMatch {
                for var card in selectedCards {
                    card.match()
                }
                setCount += 1
            } else {
                setCount -= 1
            }
            selectedCards = []
        }
    }
    
    mutating func createDeck() {
        cards = []
        while cards.count < 81 {
            let card = Card(colorProp: CardProperty.Color, patternProp: CardProperty.Pattern, shadingProp: CardProperty.Shading, numberProp: CardProperty.Number)
            if !cards.contains(card) {
                cards.append(card)
            }
        }
    }
}
