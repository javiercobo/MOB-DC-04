//
//  ViewController.swift
//  Assessment 3
//
//  Created by Tedi Konda on 1/22/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var playerCard1Outlet: UITextField!
    @IBOutlet weak var playerCard2Outlet: UITextField!
    @IBOutlet weak var cpuCard1Outlet: UITextField!
    @IBOutlet weak var cpuCard2Outlet: UITextField!
    @IBOutlet weak var playerScoreOutlet: UITextField!
    @IBOutlet weak var cpuScoreOutlet: UITextField!
    @IBOutlet weak var playerArrayOutlet: UITextField!
    @IBOutlet weak var cpuArrayOutlet: UITextField!
    
    
    var game = CardGame()
    var playerCard1 = Int()
    var playerCard2 = Int()
    var cpuCard1 = Int()
    var cpuCard2 = Int()
    var playerArray = [Int]()
    var cpuArray = [Int]()
    

    

    
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
        self.game.firstHand()
        
        playerCard1 = self.game.human.cards[0]
        playerCard2 = self.game.human.cards[1]
        cpuCard1 = self.game.cpu.cards[0]
        cpuCard2 = self.game.cpu.cards[1]
        self.playerCard1Outlet.text = String(playerCard1)
        self.cpuCard1Outlet.text = String(cpuCard1)
        self.playerCard2Outlet.text = String(playerCard2)
        self.cpuCard2Outlet.text = String(cpuCard2)
        self.playerScoreOutlet.text = String(playerCard1 + playerCard2)
        self.cpuScoreOutlet.text = String(cpuCard1 + cpuCard2)
        self.playerArrayOutlet.text = String(playerCard1) + " , " + String(playerCard2)
        self.cpuArrayOutlet.text = String(cpuCard1) + " , " + String(cpuCard2)
    }

    
    @IBAction func dealButton(sender: AnyObject) {
        func deal(){
            
        }
        self.playerArrayOutlet.text = String(playerCard1) + " , " + String(playerCard2) + " , " + String(self.game.deal)
    
    }

}

