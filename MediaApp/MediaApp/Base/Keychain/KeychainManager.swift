//
//  KeychainManager.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 27/1/24.
//

import Foundation
import Security

protocol KeychainManager {
    func save(_ value: String, for key: String) -> Bool
    func get(for key: String) -> String?
}

enum Keys {
    static let requestTokenKey = "TMDbRequestToken"
    static let sessionIdKey = "TMDbSessionId"
    static let tokenExpiryDateKey = "TMDbTokenExpiryDate"
}

class DefaultKeychainManager: KeychainManager {
    
    private let logger: MediaLogger
    
    init(logger: MediaLogger = KeychainLogger()) {
        self.logger = logger
    }

    func save(_ value: String, for key: String) -> Bool {
        guard let data = value.data(using: .utf8) else {
            logger.log(message: "Failed to convert value for key '\(key)' to Data", level: .error)
            return false
        }

        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrAccount as String: key,
            kSecValueData as String: data
        ]

        SecItemDelete(query as CFDictionary)
        
        let result = SecItemAdd(query as CFDictionary, nil)
        if result == errSecSuccess {
            logger.log(message: "Successfully saved value for key '\(key)'", level: .info)
            return true
        } else {
            logger.log(message: "Failed to save value for key '\(key)'. Error: \(result)", level: .error)
            return false
        }
    }

    func get(for key: String) -> String? {
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrAccount as String: key,
            kSecReturnData as String: kCFBooleanTrue as Any,
            kSecMatchLimit as String: kSecMatchLimitOne
        ]

        var item: AnyObject?

        let status = SecItemCopyMatching(query as CFDictionary, &item)

        if status == errSecSuccess,
           let data = item as? Data,
           let value = String(data: data, encoding: .utf8) {
            logger.log(message: "Successfully retrieved value for key '\(key)'", level: .info)
            return value
        } else {
            logger.log(message: "Failed to retrieve value for key '\(key)'. Error: \(status)", level: .error)
            return nil
        }
    }
}

