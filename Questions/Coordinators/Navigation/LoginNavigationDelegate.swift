//
//  LoginNavigationDelegate.swift
//  Questions
//
//  Created by Guillaume Maiano on 06/10/2023.
//

import Foundation
protocol LoginNavigationDelegate : NavigationDelegate {
   
}

extension MainCoordinator: LoginNavigationDelegate {
    func navigate() {
        // push next VC or whatever makes sense
    }
}
