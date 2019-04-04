//
//  Sign.swift
//  RPS
//
//  Created by Sharma, Dhruv on 4/4/19.
//  Copyright © 2019 Sharma, Dhruv. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

enum Sign {
    case rock, paper, scissors
    
    var emoji: String {
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "✋"
        case .scissors:
            return "✌️"
        }
    }
    
    func fights(_ anotherSign: Sign) -> GameState {
        if (self == .rock) {
            if anotherSign == .paper {
                return .lose
            } else if anotherSign == .scissors {
                return .win
            } else {
                return .draw
            }
        } else if (self == .paper) {
            if anotherSign == .scissors {
                return .lose
            } else if anotherSign == .rock {
                return .win
            } else {
                return .draw
            }
        } else {
            if anotherSign == .paper {
                return .win
            } else if anotherSign == .rock {
                return .lose
            } else {
                return .draw
            }
        }
    }
}
