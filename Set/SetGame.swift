//
//  Set.swift
//  Set
//
//  Created by Steven McGrath on 8/29/18.
//  Copyright © 2018 Steven McGrath. All rights reserved.
//

import Foundation

struct SetGame {
    private var numberOfCards = 81
    var cards = [Card]()
    var selectedCards = [Card]()
    var matchedCards = [Card]()
    
    var setCount = 0
    
    init() {
        createDeckWithoutShading()
    }
    
    mutating func chooseCard(at index: Int) {
        let chosenCard = cards[index]
        if !selectedCards.contains(chosenCard) {
            selectedCards.append(chosenCard)
        } else {
            if let cardToRemoveIndex = selectedCards.index(of: chosenCard) {
                selectedCards.remove(at: cardToRemoveIndex)
            }
        }
        if selectedCards.count == 3 {
            if Card.checkMatch(firstCard: selectedCards[0], secondCard: selectedCards[1], thirdCard: selectedCards[2]) {
                setCount += 1
                matchedCards.append(contentsOf: selectedCards)
                cards = Array(Set(cards).subtracting(selectedCards))
            } else {
                setCount -= 1
            }
//            selectedCards.removeAll(keepingCapacity: false)
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
    mutating func createDeckWithoutShading() {
        cards = []
        while cards.count < 81 {
            let card = Card(colorProp: CardProperty.Color, patternProp: CardProperty.Pattern, numberProp: CardProperty.Number)
            if !cards.contains(card) {
                cards.append(card)
            }
        }
    }

}
