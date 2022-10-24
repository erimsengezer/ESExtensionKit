//
//  File.swift
//  
//
//  Created by Erim Sengezer on 25.10.2022.
//

import Foundation

extension String {
    public func withPrefix(_ prefix: String) -> String {
        if self.hasPrefix(prefix) { return self }
        return "\(prefix)\(self)"
    }
}
