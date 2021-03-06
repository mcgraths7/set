//
//  ViewController.swift
//  Set
//
//  Created by Steven McGrath on 8/29/18.
//  Copyright © 2018 Steven McGrath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var game = SetGame()
    var deck = [Card]()
    @IBOutlet var cardGroup: [UIButton]!
    @IBAction func touchCard(_ sender: UIButton) {
        if let cardNum = cardGroup.index(of: sender) {
            game.chooseCard(at: cardNum)
            print(game.selectedCards)
            print(game.matchedCards)
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        deck = game.cards
        resetView()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func resetView() {
        for cardButton in cardGroup {
            if let cardNum = cardGroup.index(of: cardButton) {
                cardButton.layer.borderWidth = 1
                cardButton.layer.cornerRadius = 8
                let chosenCard = deck[cardNum]
                switch chosenCard.color {
                case "yellow":
                    cardButton.setTitleColor(#colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1), for: .normal)
                    cardButton.layer.borderColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
                case "red":
                    cardButton.setTitleColor(#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1), for: .normal)
                    cardButton.layer.borderColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
                case "blue":
                    cardButton.setTitleColor(#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1), for: .normal)
                    cardButton.layer.borderColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
                default:
                    cardButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
                }
                switch chosenCard.pattern {
                case "triangle":
                    switch chosenCard.number {
                    case "1":
                        cardButton.setTitle("▲", for: .normal)
                    case "2":
                        cardButton.setTitle("▲▲", for: .normal)
                    case "3":
                        cardButton.setTitle("▲▲▲", for: .normal)
                    default:
                        cardButton.setTitle("", for: .normal)
                    }
                case "square":
                    switch chosenCard.number {
                    case "1":
                        cardButton.setTitle("■", for: .normal)
                    case "2":
                        cardButton.setTitle("■■", for: .normal)
                    case "3":
                        cardButton.setTitle("■■■", for: .normal)
                    default:
                        cardButton.setTitle("", for: .normal)
                    }
                case "circle":
                    switch chosenCard.number {
                    case "1":
                        cardButton.setTitle("●", for: .normal)
                    case "2":
                        cardButton.setTitle("●●", for: .normal)
                    case "3":
                        cardButton.setTitle("●●●", for: .normal)
                    default:
                        cardButton.setTitle("", for: .normal)
                    }
                default:
                    break
                }
            }

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

