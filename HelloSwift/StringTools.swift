//
//  StringTools.swift
//  HelloSwift
//
//  Created by Klaudia Synarska on 11/11/2021.
//

import Foundation

class StringTools {
    func countOccurrences(character: String, from: String, caseSensitive: Bool = true) -> Int {
        if caseSensitive {
            var count = 0
            
            for letter in from {
                let letterString = String(letter)
               
                if letterString == character {
                    count = count + 1
                }
            }

            return count
        } else {
            var count = 0
            let lowercasedFrom = from.lowercased()
            let lowercasedCharacter = character.lowercased()

            for letter in lowercasedFrom {
                let letterString = String(letter)
               
                if letterString == lowercasedCharacter {
                    count = count + 1
                }
            }

            return count
        }
    }
}
