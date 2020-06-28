//
//  Dice.swift
//  
//
//  Created by Vadim Zhilinkov on 28.06.2020.
//

/// A structure representing a dice.
public struct Dice {

    // MARK: - Properties

    /// A number of the dice sides.
    public let sides: Int

    // MARK: - Initializers

    /// Creates a new `Dice`.
    ///
    /// - Parameter sides: A number of the dice sides.
    public init(sides: Int) {
        // don't allow dices with less than
        // two sides as it's actually useless
        precondition(sides > 1)

        self.sides = sides
    }

}


// MARK: - CustomStringConvertible

extension Dice: CustomStringConvertible {

    public var description: String {
        return "d\(sides)"
    }

}

// MARK: - Predefined dices

public extension Dice {

    /// A two-sided dice.
    ///
    /// Usually represented in a form of a coin.
    static let d2 = Dice(sides: 2)

    /// A four-sided dice.
    ///
    /// Usually represented in a form of a tetrahedron.
    static let d4 = Dice(sides: 4)

    /// A six-sided dice.
    ///
    /// Usually represented in a form of a cube.
    static let d6 = Dice(sides: 6)

    /// An eight-sided dice.
    ///
    /// Usually represented in a form of a octahedron.
    static let d8 = Dice(sides: 8)

    /// A ten-sided dice.
    ///
    /// Usually represented in a form of a pentagonal
    /// trapezohedron.
    static let d10 = Dice(sides: 10)

    /// A twelve-sided dice.
    ///
    /// Usually represented in a form of a dodecahedron.
    static let d12 = Dice(sides: 12)

    /// A twenty-sided dice.
    ///
    /// Usually represented in form of a icosahedron.
    static let d20 = Dice(sides: 20)

    /// A one-hundred-sided dice.
    static let d100 = Dice(sides: 100)

}
