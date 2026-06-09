//
//  ContentView.swift
//  oAuthApp
//
//  Created by German Tihiy on 09.06.2026.
//

import UIKit

final class ContentView: UIView {
    lazy var titleLabel = Label(text: "Welcome \nBack", font: .systemFont(ofSize: 40, weight: .bold))
    lazy var signLabel = Label(text: "Sign In", font: .systemFont(ofSize: 25, weight: .bold))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        viewDidLoad()
    }
    
    private func viewDidLoad() {
        backgroundColor = .gray
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error")
    }
}

#Preview {
    ViewController()
}
//changed
