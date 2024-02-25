//
//  Logger.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 25/2/24.
//

import Foundation

protocol MediaLogger {
    func log(message: String, level: LogLevel)
}

enum LogLevel: String {
    case info = "INFO"
    case warning = "WARNING"
    case error = "ERROR"
    case debug = "DEBUG"
    
    var icon: String {
        switch self {
        case .info:
            return "ℹ️"
        case .warning:
            return "⚠️"
        case .error:
            return "‼️"
        case .debug:
            return "🐛"
        }
    }
}

class NetworkingLogger: MediaLogger {
    func log(message: String, level: LogLevel) {
        let timestamp = DateFormatter.localizedString(from: Date(), dateStyle: .short, timeStyle: .long)
        print("\(timestamp) 📡 [Networking] \(level.icon) [\(level.rawValue)] \(message)")
    }
}

class KeychainLogger: MediaLogger {
    func log(message: String, level: LogLevel) {
        let timestamp = DateFormatter.localizedString(from: Date(), dateStyle: .short, timeStyle: .long)
        print("\(timestamp) 🔑 [Keychain] \(level.icon) [\(level.rawValue)] \(message)")
    }
}

class UILogger: MediaLogger {
    func log(message: String, level: LogLevel) {
        let timestamp = DateFormatter.localizedString(from: Date(), dateStyle: .short, timeStyle: .long)
        print("\(timestamp) 🖥️ [UI] \(level.icon) [\(level.rawValue)] \(message)")
    }
}
