//
//  ViewController.swift
//  Apple Pie
//
//  Created by Anthony McClendon on 2/14/19.
//  Copyright © 2019 Anthony McClendon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var listOfWords = ["pikachu", "squrirle", "eevee", "mewtwo", "ditto", "onix", "snorlax", "charmander", "bulbasaur"]
    
    let incorrectMovesAllowed = 7
    
    var currentGame : Game!
    
    var totalWins = 0
    var totalLosses = 0

    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
    func newRound() {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining : incorrectMovesAllowed)
        updateUI()
    }
    
    func updateUI() {
          scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
          treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
        }
    
}

