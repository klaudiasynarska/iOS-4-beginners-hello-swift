//
//  MathTools.swift
//  HelloSwift
//
//  Created by Klaudia Synarska on 11/11/2021.
//

import Foundation

class MathTools {
    func fibonacci(_ n: Int) -> Int {
        if n == 0 {
            return 0
        }
        
        if n == 1 {
            return 1
        }
        
        return fibonacci(n - 1) + fibonacci(n - 2)
    }
}
