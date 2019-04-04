//
//  GameState.swift
//  RPS
//
//  Created by Sharma, Dhruv on 4/4/19.
//  Copyright © 2019 Sharma, Dhruv. All rights reserved.
//

import Foundation
import UIKit

enum GameState {
    case start, win , lose, draw
    
    var status: String {
        switch self {
        case .start:
            return "Rock, Paper, Scissors?"
        case .win:
            return "You Won!!!🏆🥇"
        case .lose:
            return "You lost😢 Try again next time."
        case .draw:
            return "This game was a Draw!🏳️"
        }
    }
    
    var backgroundColor: UIColor {
        switch self {
        case .start:
            return UIColor.white
        case .win:
            return UIColor.green
        case .lose:
            return UIColor.red
        case .draw:
            return UIColor.gray
        }
    }
}
