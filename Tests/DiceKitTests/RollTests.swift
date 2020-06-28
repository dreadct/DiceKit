//
//  RollTests.swift
//  
//
//  Created by Vadim Zhilinkov on 28.06.2020.
//

import XCTest
@testable import DiceKit

final class RollTests: XCTestCase {

    func testDefaultRoller() {
        let predefinedDices: [Dice] = [
            .d2,
            .d4,
            .d6,
            .d8,
            .d10,
            .d12,
            .d20,
            .d100
        ]

        for dice in predefinedDices {
            for _ in 0 ..< dice.sides {
                let roll = dice.roll(with: .default)
                XCTAssert((1 ... dice.sides).contains(roll.side), "A default Roller has rolled an invalid \(dice) side: \(roll)")
            }
        }
    }

    static var allTests = [
        ("testDefaultRoller", testDefaultRoller),
    ]

}
