//
//  Factorization.swift
//  HelloSwift
//
//  Created by Klaudia Synarska on 11/11/2021.
//

import Foundation

class Factorization {
    enum Result {
        case prime
        case composite(factors: Array<Int>)
    }

    static func factorize(_ number: Int) -> Result? {
        if number == 1 {
            return nil
        }

        var factors: [Int] = []
        
        var n = number
        var k = 2
        
        while n > 1 {
            while n % k == 0 {
                factors.append(k)
                n = n / k
            }
            
            k += 1
        }

        if factors.count == 1 && factors.first == number {
            return Result.prime
        } else {
            return Result.composite(factors: factors)
        }
    }
}

extension Factorization.Result: Equatable {
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        switch (lhs, rhs) {
        case (.prime, .prime):
            return true
        case (.composite(let lhsComposite), .composite(let rhsComposite)):
            return lhsComposite == rhsComposite
        default:
            return false
        }
    }
}
