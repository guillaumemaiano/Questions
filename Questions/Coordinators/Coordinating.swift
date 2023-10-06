//
//  Coordinating.swift
//  Questions
//
//  Created by Guillaume Maiano on 06/10/2023.
//

import Foundation
import UIKit

protocol Coordinating: AnyObject {
    var childCoordinators: [Coordinating] {get set}
    // In order to present modal VCs, we'd need nillability, but it makes code more complex and I'm in a hurry
    var navigationController: UINavigationController { get set }
    func start()
}
