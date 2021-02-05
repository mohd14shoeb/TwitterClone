//
//  AuthNavigator.swift
//  RakebCaptain
//
//  Created by prog_zidane on 1/5/21.
//

import UIKit

class AuthNavigator: Navigator {
    var coordinator: Coordinator
    
    enum Destination {
        case auth
    }
    
    required init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    private var isCompletedProfile: Bool?
    {
        return UserSessionManager.shared.currentUser?.completedProfile ?? nil
    }
    
    var rootViewController: UIViewController {
        return viewController(for: .auth, coordinator: coordinator)
    }
    
    func viewController(for destination: Destination, coordinator: Coordinator) -> UIViewController {
        switch destination {
        case .auth:
            return UIViewController()
        }
    }
}