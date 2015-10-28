//
//  ViewController.swift
//  Assessment 3
//
//  Created by Tedi Konda on 1/22/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var playerCardsOutlet: UITextField!
    @IBOutlet weak var playerScoreOutlet: UITextField!
    @IBOutlet weak var cpuScoreOutlet: UITextField!
    
    var game = CardGame()
    var playerCard1 = Int()
    var playerCard2 = Int()
    var playerArray = [Int]()
    var playerScore = Int()
    var cpuScore = Int()
    
    
    
    
    
    // BlackJack game: Create a a game of Blackjack
    // ************* Baseline requirements:
    // ** Set up Player class and CardGame class in their respective provided files. Follow the protocol rules for the CardGame class.
    
    
    // When card game first starts, a new player is generated and handed out 2 cards (between 1 and 11). Hint: generate 2 random numbers and add them together
    // A value for the CPU is also generated between 12 and 21 (random Int)
    
    
    // When the green view is double tapped (tap gesture recognizer), generate a new card (between 1 and 11) for the player, and add it to their score
    // If the total adds up to over 21, change the label text to "Game over, you lose!" and remove the ability for the player to keep tapping for cards
    // If the player wishes to not get dealt any more cards, the player can swipe right to end game (swipe gesture recognizer)
    // When the player ends the game, present the CPU score and present winner determined from compre comparison
    
    // Bonus: Create a button to play a new game.
    // Bonus 2: Player can start with a pool of money (selected through a text field) and make bets for each game (through a text field again). If player reaches <= 0, don't allow them to play any more games.
    // Bonus 3: When handing out cards, display the actual value to the user. If the card is an Ace, let the user select either 1 or 11.
    
    
    @IBOutlet weak var redBox: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var winnerLabel: UILabel!

    func clearGame() {
        self.winnerLabel.text = "Who's gonna win?"
        playerScore = 0
        self.game.human.cards = []
        self.playerCardsOutlet.text = ""
        playerArray = []
        self.cpuScoreOutlet.text = ""
    }
    
    
    @IBAction func newGameButton(sender: AnyObject) {
        clearGame()
        self.game.firstHand()
        print(self.game.human.cards)
        playerCard1 = self.game.human.cards[0]
        playerCard2 = self.game.human.cards[1]
        playerArray.append(playerCard1)
        playerArray.append(playerCard2)
        self.playerCardsOutlet.text = prettyPrint(playerArray)
        playerScore = playerCard1 + playerCard2
        self.playerScoreOutlet.text = String(playerScore)
        game.cpuGetHand()
    }
    
    func prettyPrint(cardHand:[Int]) -> String {
        var output = ""
        for i in 0..<cardHand.count {
            //deal to human
            output += String(cardHand[i]) + " | "
        }
        return output
    }
    
    @IBAction func dealDoubleTap(sender: AnyObject) {
        
        if playerScore <= 21 {
            self.game.deal()
            print(self.game.human.cards)
            //cardArray is my card deck
            let newCardValue = game.human.cards[(game.human.cards.count-1)]
            playerScore += newCardValue
            self.playerScoreOutlet.text = String(playerScore)
            self.playerCardsOutlet.text = prettyPrint(game.human.cards)
            if playerScore > 21 {
                self.winnerLabel.text = "GAME OVER, YOU LOSE!"
                
                let cpuScore = game.cpu.score
                self.cpuScoreOutlet.text = String(cpuScore)
            }

    }

    }

    @IBAction func holdCardsRightSwip(sender: AnyObject) {
        
        cpuScore = game.cpu.score
        self.cpuScoreOutlet.text = String(cpuScore)
        if cpuScore > playerScore {
            self.winnerLabel.text = "GAME OVER, YOU LOSE!"
        }
        if cpuScore < playerScore {
            self.winnerLabel.text =
            "You win!!"
            
        }
        if cpuScore == playerScore {
            self.winnerLabel.text =
            "It's a tie."
            
        }

    }


}