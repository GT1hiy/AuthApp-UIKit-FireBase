//
//  TextButton.swift
//  AuthAppGT
//
//  Created by German Tihiy on 14.06.2026.
//
import UIKit

class TextButton: UIButton {
    init(text: String, color: UIColor = .white, fonSize: CGFloat = 12, action: UIAction) {
        super.init(frame: .zero)
        self.setTitle(text, for: .normal)
        self.addAction(action, for: .touchUpInside)
        self.setTitleColor(color, for: .normal)
        self.titleLabel?.font = .systemFont(ofSize: fonSize)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error")
    }
}
