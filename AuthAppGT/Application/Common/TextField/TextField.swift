//
//  TextField.swift
//  oAuthApp
//
//  Created by German Tihiy on 09.06.2026.
//

import UIKit

final class TextField: UITextField {
    init(image: String, placeholder: String, isPassword: Bool = false) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.isSecureTextEntry = isPassword
        
    }
    
    private func setupPlaceholder(placeholder: String) {
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes:  [
            .foregroundColor: UIColor.
        ])
    }
    
    required init(coder: NSCoder){
        fatalError("Error")
    }
}
