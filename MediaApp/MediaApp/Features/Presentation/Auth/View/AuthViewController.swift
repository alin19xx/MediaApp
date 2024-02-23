//
//  AuthViewController.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 27/1/24.
//

import Foundation
import AuthenticationServices

class AuthViewController: UIViewController, ASWebAuthenticationPresentationContextProviding {
    var viewModel: AuthenticationViewModel?
    var webAuthSession: ASWebAuthenticationSession?
    
    var mainCoordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBinding()
        viewModel?.fetchRequestToken()
    }
    
    private func setupBinding() {
        viewModel?.authURL.bind { [weak self] url in
            if let url = url {
                self?.redirectToWebForAuthentication(url: url)
            }
        }

        viewModel?.errorMessage.bind { [weak self] message in
            if let message = message {
                self?.showErrorMessage(message)
            }
        }

        viewModel?.isAuthenticationComplete.bind { [weak self] isComplete in
            if isComplete {
                self?.handleAuthenticationCompletion()
            }
        }
    }
    
    private func redirectToWebForAuthentication(url: URL) {
        webAuthSession = ASWebAuthenticationSession(url: url, callbackURLScheme: "mediaapp") { [weak self] callbackURL, error in
            guard let self = self else { return }
            if let error = error {
                self.viewModel?.errorMessage.value = error.localizedDescription
            } else if let callbackURL = callbackURL {
                self.viewModel?.processCallbackURL(callbackURL)
            }
        }

        webAuthSession?.presentationContextProvider = self
        
        DispatchQueue.main.async {
            self.webAuthSession?.start()
        }
    }
    
    private func showErrorMessage(_ message: String) {
        // showErrorMessage
    }

    private func handleAuthenticationCompletion() {
        // handleAuthenticationCompletion
    }

    func presentationAnchor(for session: ASWebAuthenticationSession) -> ASPresentationAnchor {
        return self.view.window ?? ASPresentationAnchor()
    }
}
