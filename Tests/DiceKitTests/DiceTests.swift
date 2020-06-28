//
//  DiceTests.swift
//
//
//  Created by Vadim Zhilinkov on 28.06.2020.
//

import XCTest
@testable import DiceKit

final class DiceTests: XCTestCase {

    func testDiceSides() {
        let predefinedDices: [Int: Dice] = [
            2: .d2,
            4: .d4,
            6: .d6,
            8: .d8,
            10: .d10,
            12: .d12,
            20: .d20,
            100: .d100
        ]

        for (sides, dice) in predefinedDices {
            XCTAssertEqual(sides, dice.sides, "The \(dice) number of sides (\(dice.sides)) doesn't match an expected dice sides count (\(sides))")
        }
    }

    static var allTests = [
        ("testDiceSides", testDiceSides),
    ]

}
