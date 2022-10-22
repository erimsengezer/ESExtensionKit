//
//  UINavigationController+Extensions.swift
//  
//
//  Created by Erim Sengezer on 23.10.2022.
//

import UIKit

extension UINavigationController {
    
    public var lastViewController: UIViewController? {
        return viewControllers.last
    }
    
    public func setRootViewController(viewController: UIViewController) {
        self.viewControllers = [viewController]
    }
}
