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
            print(deck[cardNum])
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        deck = game.cards
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

