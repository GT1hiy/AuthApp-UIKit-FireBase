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
        setupPlaceholder(placeholder: placeholder)
        backgroundColor = .appLightBlack
        setupLeftView(image: image)
        layer.cornerRadius = 15
        textColor = .white
        font = .systemFont(ofSize: 12)
        
        if isPassword {
            setupRightView()
        }
    }
    
    private let padding = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
    
    private func setupPlaceholder(placeholder: String) {
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes:  [
            .foregroundColor: UIColor.gray,
            .font: UIFont.systemFont(ofSize: 15)
        ])
    }
    
    private func setupLeftView(image: String) {
        let leftIconView = {
            $0.image = UIImage(systemName: image)
            $0.contentMode = .scaleAspectFit
            $0.clipsToBounds = true
            $0.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
            $0.tintColor = .gray
            return $0
        }(UIImageView())
        
        let leftContainerView = UIView(frame: CGRect(x: 0, y: 0, width: 44, height: 34))
        leftContainerView.addSubview(leftIconView)
        leftIconView.center = leftContainerView.center

        
        leftView = leftContainerView
        leftViewMode = .always
    }
    
    lazy var action: UIAction = UIAction { [weak self] _ in
        guard let self = self else { return }
        isSecureTextEntry.toggle()
    }
    
    private func setupRightView() {
        
        let rightButtonView = {
            $0.frame.size = CGSize(width: 20, height: 15)
            $0.tintColor = .gray
            $0.setImage(UIImage(systemName: "eye"), for: .normal)
            
            return $0
        }(UIButton(primaryAction: action))
        
        let rightContainerView = UIView(frame: CGRect(x: 0, y: 0, width: 44, height: 34))
        rightContainerView.addSubview(rightButtonView)
        rightButtonView.center = rightContainerView.center
        
        rightView = rightContainerView
        rightViewMode = .always

    }
    
    required init(coder: NSCoder){
        fatalError("Error")
    }
}

