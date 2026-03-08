//
//  ViewController.swift
//  Apple Pie
//
//  Created by Paulette Njeri on 3/8/26.
//

import UIKit

class ViewController: UIViewController {
    
    var listOfWords = ["apple", "golfing", "banana", "bulb", "mango", "cake", "bed", "cow", "skiing", "computer"]
    
    let incorrectMovesAllowed: Int = 7
    
    var totalWins = 0 {
        didSet {
            totalPoints += 100
            newRound()
        }
    }
    var totalLosses = 0 {
        didSet {
            newRound()
        }
    }
    var totalPoints = 0
    
    @IBOutlet var treeImageView: UIImageView!
    @IBOutlet var correctWordLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    
    
    @IBOutlet var letterButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
    var currentGame: Game!
    
    func newRound() {
        if !listOfWords.isEmpty {
                let newWord = listOfWords.removeFirst()
                currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
                enableLetterButtons(true)
                updateUI()
            } else {
                enableLetterButtons(false)
            }
        }
    func enableLetterButtons(_ enable: Bool) {
      for button in letterButtons {
        button.isEnabled = enable
      }
    }
    
    func updateUI() {
        var letters = [String]()
        for letter in currentGame.formattedWord {
            letters.append(String(letter))
        }
        let wordWithSpacing = letters.joined(separator: " ")
        correctWordLabel.text = wordWithSpacing
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses), Points:\(totalPoints)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.configuration?.title ?? sender.title(for: .normal) ?? ""
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateGameState()
    }
    
    func updateGameState() {
        if currentGame.incorrectMovesRemaining == 0 {
            let alert = UIAlertController(title: "You lost!", message: "The word was \(currentGame.word). Try a new word!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                NSLog("The \"OK\" alert occured.")
                self.totalLosses += 1
            }))
            self.present(alert, animated: true, completion: nil)
        } else if currentGame.word == currentGame.formattedWord {
            let alert = UIAlertController(title: "You Won!", message: "The word was \(currentGame.word). Try a new word!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
                self.totalWins += 1            }))
            self.present(alert, animated: true, completion: nil)
        } else {
            updateUI()
        }
    }
    
}
    


