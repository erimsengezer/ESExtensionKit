//
//  Array+Extensions.swift
//  
//
//  Created by Erim Sengezer on 18.10.2022.
//

import Foundation

extension Array {
    func getValue(at index: Int) -> Element? {
        guard index >= 0 && index < self.count else {
            return nil
        }
        return self[index]
    }
}

extension Sequence where Element: Equatable {

    func count(where isIncluded: (Element) -> Bool) -> Int {
        self.filter(isIncluded).count
    }
}
