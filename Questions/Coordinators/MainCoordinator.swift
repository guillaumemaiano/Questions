//
//  MainCoordinator.swift
//  Questions
//
//  Created by Guillaume Maiano on 06/10/2023.
//

import Foundation
import UIKit

class MainCoordinator: BaseCoordinator {
    
    override func start() {
        
        if let loginVC = Navigation.login.instantiateInitialViewController() as? LoginViewController {
            loginVC.delegate = self
            navigationController.pushViewController(loginVC, animated: false)
        }
        
    }
}
