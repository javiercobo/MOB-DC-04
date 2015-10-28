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


class CardGame {
    
    var human = Player(cards:[])
    var cpu = Computer(score: Int())
 
    func getCard() -> Int {
        let randomNumber = Int(arc4random_uniform(10)+1)
        return randomNumber
    }
    
    func deal() {
        var newCard = 0
        newCard = getCard()
        self.human.cards.append(newCard)
 
    }

    func cpuGetHand() -> Int {
        cpu.score = Int(arc4random_uniform(10)+12)
        return cpu.score

    }
    
    func firstHand() -> Int {
        var tempCard = 0
        var cpuHand = 0
        for _ in 0...1 {
            //deal to human
            tempCard = getCard()
            self.human.cards.append(tempCard)
        }
        //get cpu score
        return self.cpu.score
    }
}