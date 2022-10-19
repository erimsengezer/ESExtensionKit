//
//  Date+Extension.swift
//  
//
//  Created by Erim Sengezer on 18.10.2022.
//

import Foundation

extension Date {
    public func getCurrentDate(_ format: String = "dd/MM/yyyy HH:mm:ss") -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        dateFormatter.timeZone = .current
        return dateFormatter.string(from: Date())
    }
}
