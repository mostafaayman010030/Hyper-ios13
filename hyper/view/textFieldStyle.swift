//
//  textFieldStyle.swift
//  hyper
//
//  Created by Moustafa on 2/8/20.
//  Copyright © 2020 Moustafa Ayman Ahmed. All rights reserved.
//

import UIKit

class textFieldStyle: UITextField {

    
    override func prepareForInterfaceBuilder() {
           customizeView()
       }
       override func awakeFromNib()
       {
           super.awakeFromNib()
           customizeView()
       }
    
    let padding = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)

    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        layer.cornerRadius = 15.0
        textAlignment = .center
        clipsToBounds = true
//        layer.borderColor=#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
//        layer.borderWidth=2.0
        bounds.inset(by:  UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 5))
        //textAlignment = .left
        //clipsToBounds=true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 0.9921568627, green: 0.368627451, blue: 0.3254901961, alpha: 0.95)
           // placeholderRect(forBounds: self)
        }
    }

}
