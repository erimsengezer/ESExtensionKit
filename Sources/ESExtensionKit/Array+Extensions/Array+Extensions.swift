//
//  Array+Extensions.swift
//  
//
//  Created by Erim Sengezer on 18.10.2022.
//

import Foundation

open extension Array {
    open func getValue(at index: Int) -> Element? {
        guard index >= 0 && index < self.count else {
            return nil
        }
        return self[index]
    }
}

open extension Sequence where Element: Equatable {

    open func count(where isIncluded: (Element) -> Bool) -> Int {
        self.filter(isIncluded).count
    }
}
