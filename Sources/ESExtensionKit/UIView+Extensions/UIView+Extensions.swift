//
//  UIView+Extensions.swift
//  
//
//  Created by Erim Sengezer on 18.10.2022.
//

import UIKit

extension UIView {
    
    public func xibSetup() {
        let view = loadFromNib()
        addSubview(view)
        stretch(view: view)
    }
    
    public func loadFromNib<T: UIView>() -> T {
        let selfType = type(of: self)
        let bundle = Bundle(for: selfType)
        let nibName = String(describing: selfType)
        let nib = UINib(nibName: nibName, bundle: bundle)
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? T else {
            fatalError("Error loading nib with name \(nibName)")
        }
        return view
    }
    
    public func addCornerRadius(_ radius: CGFloat = 4) {
        layer.cornerRadius = radius
        layer.masksToBounds = true
    }
    
    public func addBorderLine(width: CGFloat = 1, color: UIColor) {
            layer.borderWidth = width
            layer.borderColor = color.cgColor
    }
    
    public func makeRounded() {
        layer.masksToBounds = false
        layer.cornerRadius = self.frame.height / 2
        clipsToBounds = true
    }
    
    public func addShadow(cornerRadius: CGFloat = 16,
                   shadowColor: UIColor = UIColor(white: 0.0, alpha: 0.5),
                   shadowOffset: CGSize = CGSize(width: 0.0, height: 3.0),
                   shadowOpacity: Float = 0.3,
                   shadowRadius: CGFloat = 5) {
      
          layer.cornerRadius = cornerRadius
          layer.shadowColor = shadowColor.cgColor
          layer.shadowOffset = shadowOffset
          layer.shadowOpacity = shadowOpacity
          layer.shadowRadius = shadowRadius
    }
    
    public func stretch(view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: topAnchor),
            view.leftAnchor.constraint(equalTo: leftAnchor),
            view.rightAnchor.constraint(equalTo: rightAnchor),
            view.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
