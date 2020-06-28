//
//  Roller.swift
//  
//
//  Created by Vadim Zhilinkov on 28.06.2020.
//

/// A dice roller.
public struct Roller {

    /// A closure for rolling a dice side
    /// depending on the sides count.
    internal typealias SideRollClosure = (_ sides: Int) -> Int

    // MARK: - Properties

    internal let sideRoll: SideRollClosure

    // MARK: - Initializers

    /// Creates a new roller.
    ///
    /// - Parameter sideRoll: A side rolling closure.
    internal init(sideRoll: @escaping SideRollClosure) {
        self.sideRoll = sideRoll
    }

}

// MARK: - Public methods

public extension Roller {

    /// Rolls the specified dice.
    ///
    /// - Parameter dice: A `Dice` to roll.
    ///
    /// - Returns: A `Roll` of the specified dice.
    func roll(dice: Dice) -> Roll {
        let side = sideRoll(dice.sides)
        return Roll(dice: dice, side: side)
    }

}

// MARK: - Predefined rollers

public extension Roller {

    /// A default dice roller.
    static let `default` = Roller(sideRoll: { sides in
        return Int.random(in: 1 ... sides)
    })

}

// MARK: - Dice extension

public extension Dice {

    /// Rolls the dice with the specified roller.
    ///
    /// - Parameter roller: A roller to be used for rolling the dice.
    /// - Returns: A new roll of the dice.
    func roll(with roller: Roller = .default) -> Roll {
        return roller.roll(dice: self)
    }

}
