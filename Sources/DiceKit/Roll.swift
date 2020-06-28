//
//  Roll.swift
//  
//
//  Created by Vadim Zhilinkov on 28.06.2020.
//

/// A structure representing a roll of a `Dice`.
public struct Roll {

    // MARK: - Properties

    /// A rolled `Dice`.
    public var dice: Dice

    /// A one-based number of the dice.
    public var side: Int

    // MARK: - Initializers

    /// Creates a new `Roll` of a `Dice`.
    ///
    /// - Parameters:
    ///   - dice: A rolled `Dice`.
    ///   - side: A side of the `Dice`.
    init(dice: Dice, side: Int) {
        // don't allow negative or zero side values
        precondition(side > 0)
        
        self.dice = dice
        self.side = side
    }

}

// MARK: - CustomStringConvertible

extension Roll: CustomStringConvertible {

    public var description: String {
        return "\(dice)|\(side)"
    }

}
