//
//  AuthViewModel.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 27/1/24.
//

import Foundation

protocol AuthenticationViewModel {
    var authURL: Box<URL?> { get }
    var errorMessage: Box<String?> { get }
    var isAuthenticationComplete: Box<Bool> { get }
    
    func fetchRequestToken()
    func processCallbackURL(_ url: URL)
}

class DefaultAuthenticationViewModel: AuthenticationViewModel {
    var authURL: Box<URL?> = Box(nil)
    var errorMessage: Box<String?> = Box(nil)
    var isAuthenticationComplete: Box<Bool> = Box(false)
    
    private let authorizationRepository: AuthorizationRepository

    init(authorizationRepository: AuthorizationRepository = DefaultAuthorizationRepository()) {
        self.authorizationRepository = authorizationRepository
    }

    func fetchRequestToken() {
        authorizationRepository.fetchRequestToken { [weak self] result in
            switch result {
            case .success(let token):
                self?.generateAuthenticationURL(with: token)
            case .failure(let error):
                self?.errorMessage.value = error.localizedDescription
            }
        }
    }
    
    private func createSession(requestToken: String) {
        authorizationRepository.createSession(requestToken: requestToken) { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(_):
                    self?.isAuthenticationComplete.value = true
                case .failure(let error):
                    self?.errorMessage.value = "Error al crear la sesión: \(error.localizedDescription)"
                    self?.isAuthenticationComplete.value = false
                }
            }
        }
    }
    
    func processCallbackURL(_ url: URL) {
        guard let requestToken = extractToken(from: url) else {
            errorMessage.value = "Error al procesar la URL de redirección."
            return
        }
        createSession(requestToken: requestToken)
    }
    
    private func generateAuthenticationURL(with token: String) {
        if let url = authorizationRepository.createAuthenticationURL(with: token) {
            authURL.value = url
        } else {
            errorMessage.value = "Error al generar la URL de autenticación."
        }
    }
    
    private func extractToken(from url: URL) -> String? {
        let urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: true)
        return urlComponents?.queryItems?.first(where: { $0.name == "request_token" })?.value
    }
}
