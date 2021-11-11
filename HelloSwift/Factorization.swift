//
//  Factorization.swift
//  HelloSwift
//
//  Created by Klaudia Synarska on 11/11/2021.
//

import Foundation

enum Result {
    case prime
    case composite(factors: Array<Int>)
}

class Factorization {
    func factorize(_ number: Int) -> Result? {
        if number == 1 {
            return nil
        }

        var factors: [Int] = []

        for i in 1...number {
            if number % i == 0 {
                factors.append(i)
            }
        }

        factors.removeFirst()
        factors.removeLast()

        if factors.isEmpty {
            return Result.prime
        } else {
            return Result.composite(factors: factors)
        }
    }
}
