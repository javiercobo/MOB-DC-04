//
//  CardGame.swift
//  Assessment 3
//
//  Created by Tedi Konda on 1/23/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import Foundation


protocol BlackJack {
    // Require a deal method
    // Require a first hand method
    func deal()
    func firstHand()
}


class CardGame: BlackJack {

    var human = Player(cards:[])
    var cpu = Player(cards:[])

    func deal(){
        let newCard = self.getCard()
        self.human.cards.append(newCard)
        
}

    func firstHand() {
        var tempCard = 0
        for _ in 0...1 {
            //deal to human
            tempCard = getCard()
            self.human.cards.append(tempCard)
            //deal to cpu
            tempCard = getCard()
            self.cpu.cards.append(tempCard)

        }
}
    
    func getCard() -> Int {
        let randomNumber = Int(arc4random_uniform(13)+1)
        return randomNumber
    }
    
        /*
    var cardNumber: [Int]
    //   var cardName: [String]
    var cardValue: [Int]
    var cpuValue: [Int]
    
    init(number: [Int] = [], /* name: [String] = [], */ value: [Int] = [], cpu: [Int] = [] ){
        
        self.cardNumber = number
        //        self.cardName = name
        self.cardValue = value
        self.cpuValue = cpu
    }
    
    
    func randomNumber() -> Int {
        let randomNumberDeal: Int = Int(arc4random_uniform(11)+1)
        return randomNumberDeal
    }
    

    
    

    var player1 = Player()
    var score: Int = 0
    func deal() -> Int {
        let randomNumberDeal: Int = Int(arc4random_uniform(11)+1)
        self.score += randomNumberDeal
        return score


        
        // ** Set up Player class and CardGame class in their respective provided files. Follow the protocol rules for the CardGame class.
        
        // When card game first starts, a new player is generated and handed out 2 cards (between 1 and 11). Hint: generate 2 random numbers and add them together
        
    }
    
    func firstHand() -> Int {
        let randomNumber: Int = Int(arc4random_uniform(11)+1)
        let randomNumber2: Int = Int(arc4random_uniform(11)+1)
        let totalFHScore: Int = randomNumber + randomNumber2
        return totalFHScore
        let randomNumberCPU: Int = Int(arc4random_uniform(10)+12)
        return randomNumberCPU
    }
     */
}