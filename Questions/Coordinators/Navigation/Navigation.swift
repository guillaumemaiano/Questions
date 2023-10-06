//
//  Navigation.swift
//  Questions
//
//  Created by Guillaume Maiano on 06/10/2023.
//

import Foundation
import UIKit

typealias StoryboardID = String

enum Navigation: String, Instantiating {
    
    // MARK: - values
    
    case login = "Login"
    case questions = "Questions"
    case statistics = "Statistics"
    
    enum Login: StoryboardID {
        case signIn = "SignIn"
        case signUp = "CreateAccount"
    }
    
    enum Statistics: StoryboardID {
        case total = "Total"
        case detail = "Detail"
    }
    
    enum Questions: StoryboardID {
        case question = "Question"
        case feedback = "Feedback"
    }
    
    // Mark: - functions implementing Instantiating

    func instantiateInitialViewController() -> UIViewController? {
        return UIStoryboard(name: self.rawValue, bundle: nil).instantiateInitialViewController()
    }
    
    func instantiateViewController(identifier: StoryboardID) -> UIViewController? {
        return UIStoryboard(name: self.rawValue, bundle: nil).instantiateViewController(withIdentifier: identifier)
    }
    
}

protocol Instantiating {
    func instantiateInitialViewController() -> UIViewController?
    func instantiateViewController(identifier: StoryboardID) -> UIViewController?
}
