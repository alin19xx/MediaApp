//
//  DateFormatter+Extension.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 25/2/24.
//

import Foundation

extension DateFormatter {
    static let tokenExpiry: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss 'UTC'"
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        formatter.locale = Locale(identifier: "en_US_POSIX")
        return formatter
    }()
}
