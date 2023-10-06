//
//  BaseCoordinator.swift
//  Questions
//
//  Created by Guillaume Maiano on 06/10/2023.
//

import Foundation
import UIKit

class BaseCoordinator: Coordinating {
    
    // MARK: - Vars
    var navigationController: UINavigationController
    
    var childCoordinators: [Coordinating] = []

    // MARK: - init
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    // MARK: - Functions
    func start() {
        fatalError("This is the base coordinator responding, implement navigation in the children.")
    }
    
}
