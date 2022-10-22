//
//  File.swift
//  
//
//  Created by Erim Sengezer on 18.10.2022.
//

import UIKit

extension UIViewController {
    
    public var appDelegate: UIApplicationDelegate {
        get {
            return UIApplication.shared.delegate as! UIApplicationDelegate
        }
    }
    
    public func showToast(message : String, font: UIFont, toastColor: UIColor = UIColor.white,
                   toastBackground: UIColor = UIColor.black) {
        let toastLabel = UILabel()
        toastLabel.textColor = toastColor
        toastLabel.font = font
        toastLabel.textAlignment = .center
        toastLabel.text = message
        toastLabel.alpha = 0.0
        toastLabel.layer.cornerRadius = 6
        toastLabel.backgroundColor = toastBackground

        toastLabel.clipsToBounds  =  true

        let toastWidth: CGFloat = toastLabel.intrinsicContentSize.width + 16
        let toastHeight: CGFloat = 32
        
        toastLabel.frame = CGRect(x: self.view.frame.width / 2 - (toastWidth / 2),
                                  y: self.view.frame.height - (toastHeight * 3),
                                  width: toastWidth, height: toastHeight)
        
        self.view.addSubview(toastLabel)
        
        UIView.animate(withDuration: 1.5, delay: 0.25, options: .autoreverse, animations: {
            toastLabel.alpha = 1.0
        }) { _ in
            toastLabel.removeFromSuperview()
        }
    }

    public func presentViewController(_ viewControllerToPresent: UIViewController) {
        self.present(viewControllerToPresent, animated: true, completion: nil)
    }

    public func pushViewControllerToNavigationController(_ viewControllerToPresent: UIViewController, isAnimated: Bool = true) {
        self.navigationController?.pushViewController(viewControllerToPresent, animated: isAnimated)
    }

    public func selfDismiss() {
        self.dismiss(animated: true, completion: nil)
    }

    public func selfPopViewController(animated: Bool = true) {
        self.navigationController?.popViewController(animated: animated)
    }

    public func selfPopToRootViewController(animated: Bool = false) {
        self.navigationController?.popToRootViewController(animated: animated)
    }
}
