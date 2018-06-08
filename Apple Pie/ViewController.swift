//
//  ViewController.swift
//  Apple Pie
//
//  Created by Saya Murton on 6/8/18.
//  Copyright © 2018 Saya Murton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var listOfWords = ["pizza", "cooking", "gaming", "noob", "swift", "japan"]
    let incorrectMovesAllowed = 7
    var totalWins = 0
    var totalLosses = 0
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var currentGame: Game!
    
    func newRound(){
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed)
        updateUI()
    }
    
    func updateUI() {
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named:"Tree \(currentGame.incorrectMovesRemaining)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

