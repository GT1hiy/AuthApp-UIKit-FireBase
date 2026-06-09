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
            .foregroundColor: UIColor.lightGray
        ])
    }
    
    private func setupLeftView(image: String) {
        let leftIconView = {
            $0.image = UIImage(named: image)
            $0.contentMode = .scaleAspectFit
            $0.clipsToBounds = true
            $0.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
            $0.tintColor = .lightGray
            return $0.image
        }(UIImageView())
        
        let leftContainerView = UIView(frame: CGRect(x: 0, y: 0, width: 44, height: 20))
        
    }
    
    required init(coder: NSCoder){
        fatalError("Error")
    }
}
