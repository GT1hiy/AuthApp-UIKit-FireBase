//
//  CircleButton.swift
//  AuthAppGT
//
//  Created by German Tihiy on 14.06.2026.
//

import UIKit

final class CircleButton: UIButton {
    init(image: String, background: UIColor, size: CGFloat = 54, action: UIAction) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: size).isActive = true
        heightAnchor.constraint(equalToConstant: size).isActive = true
        layer.cornerRadius = size / 2
        backgroundColor = background
        setImage(UIImage(named: image), for: .normal)
        imageView?.translatesAutoresizingMaskIntoConstraints = false
        imageView?.widthAnchor.constraint(equalToConstant: 20).isActive = true
        imageView?.heightAnchor.constraint(equalToConstant: 20).isActive = true
        addAction(action, for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error")
    }
}
