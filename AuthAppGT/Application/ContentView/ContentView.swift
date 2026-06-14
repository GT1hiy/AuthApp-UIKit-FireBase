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
    
    lazy var emailField = TextField(image: "person.fill", placeholder: "Username or Email")
    lazy var passwordField = TextField(image: "lock.fill", placeholder: "Password", isPassword: true)
    
    lazy var forgotButton = TextButton(text: "Forgot Password?", action : UIAction(handler: { _ in
        //
    }))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        viewDidLoad()
        setConstraints()
    }
    
    private func viewDidLoad() {
        backgroundColor = .appBlack
        [titleLabel, emailField, passwordField, forgotButton].forEach { item in
            addSubview(item)}
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            emailField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50),
            emailField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            emailField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            emailField.heightAnchor.constraint(equalToConstant: 54),
            
            passwordField.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 20),
            passwordField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            passwordField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            passwordField.heightAnchor.constraint(equalToConstant: 54),
            
            forgotButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 10),
            forgotButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error")
    }
}

#Preview {
    ViewController()
}

//changed
