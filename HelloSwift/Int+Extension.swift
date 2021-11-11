//
//  Int+Extension.swift
//  HelloSwift
//
//  Created by Klaudia Synarska on 11/11/2021.
//

import Foundation

extension Int {
    func times(_ closure: () -> Void) {
        if self <= 0 {
            return
        }
        for _ in 0..<self {
            closure()
        }
    }
}
