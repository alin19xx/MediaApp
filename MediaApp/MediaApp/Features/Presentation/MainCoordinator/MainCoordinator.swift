//
//  MainCoordinator.swift
//  MediaApp
//
//  Created by Alex Lin Segarra on 22/1/24.
//

import UIKit
import Foundation

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
}

final class MainCoordinator: NSObject, Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start(authVM: AuthenticationViewModel) {
        let home = AuthViewController()
        home.mainCoordinator = self
        home.viewModel = authVM
        
        self.navigationController.pushViewController(home, animated: true)
    }
    
    func dismissViewController() {
        self.navigationController.dismiss(animated: true)
    }
    
//    func pushDetailStadiumViewController(model: StadiumModel) {
//        let detailVC = StadiumDetailView()
//        detailVC.model = model
//        detailVC.mainCoordinator = self
//        detailVC.configureAnnotationWith(lat: model.lat, long: model.long)
//        
//        self.navigationController.pushViewController(detailVC, animated: true)
//    }
}
