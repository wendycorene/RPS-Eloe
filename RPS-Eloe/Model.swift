//
//  Model.swift
//  RPS-Eloe
//
//  Created by Eloe,Wendy C on 2/19/18.
//  Copyright © 2018 Eloe,Wendy C. All rights reserved.
//

import Foundation
class ChoiceClass {
    enum Choice {
        case None
        case Rock
        case Paper
        case Scissors}
    var player1Choice: Choice = .None
    var player2Choice: Choice = .None
    var winnerString: String = ""

    func reset(){
        player1Choice = .None
        player2Choice = .None
    }

    func haveResult() -> Bool {
        var p1NotNone: Bool
        var p2NotNone: Bool
        switch player1Choice {
        case .None:
            return false
        default:
            p1NotNone = true
        }
        switch player2Choice {
        case .None:
            return false
        default:
            p2NotNone = true
        }
        if p1NotNone && p2NotNone {
            return true
        }
        else {
            return false
        }
    }

    func winner () -> String {
        /*switch player1Choice {
        case .None:
            switch player2Choice {
                case .None:
                    return "It's a tie!"
                default:
                    return "Player 2 wins!"
            }
            return "None"
        case .Rock:
            switch player2Choice {
            case .None:
                return "Player 1 wins!"
            case .Rock:
                return "It's a tie!"
            case .Paper:
                return "Player 2 wins!"
            case .Scissors:
                return "Player 1 wins!"
            }
            return "Rock"
        case .Paper:
            switch player2Choice {
            case .None:
                return "Player 1 wins!"
            case .Rock:
                return "Player 1 wins!"
            case .Paper:
                return "It's a tie!"
            case .Scissors:
                return "Player 2 wins!"
            }
            return "paper"
        case .Scissors:
            switch player2Choice {
            case .None:
                return "Player 1 wins!"
            case .Rock:
                return "Player 2 wins!"
            case .Paper:
                return "Player 1 wins!"
            case .Scissors:
                return "It's a tie!"
            }
        }*/
        winnerString = "WAT"
        return winnerString
    }

    func choosePlayer1 (pick: Choice) {
        player1Choice = pick
    }

    func choosePlayer2 (pick: Choice) {
        player2Choice = pick
    }
}
