//
//  ContentView.swift
//  oAuthApp
//
//  Created by German Tihiy on 09.06.2026.
//

import UIKit
import AuthenticationServices

final class ContentView: UIView {
    lazy var titleLabel = Label(text: "Welcome \nBack", font: .systemFont(ofSize: 40, weight: .bold))
    lazy var signLabel = Label(text: "Sign In", font: .systemFont(ofSize: 25, weight: .bold))
    lazy var emailField = TextField(image: "person.fill", placeholder: "Username or Email")
    lazy var passwordField = TextField(image: "lock.fill", placeholder: "Password", isPassword: true)
    lazy var forgotButton = TextButton(text: "Forgot Password?", action: btnAction)
    lazy var signInLabel = Label(text: "Sign In", font: .systemFont(ofSize: 25, weight: .bold))
    lazy var nextBtn = CircleButton(image: "arrow", background: .appBlue, action: btnAction)
    lazy var signWithLabel = Label(text: "Sign in with", color: .gray, font: .systemFont(ofSize: 12))
    lazy var backLabel = Label(text: "Back", color: .gray, font: .systemFont(ofSize: 12))
    lazy var btnAction: UIAction = UIAction { [weak self] btn in
        if let button = btn.sender as? UIButton {
            //
        }
    }
    lazy var appleBtn: ASAuthorizationAppleIDButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .appLightBlack
        $0.layer.cornerRadius = 27
        $0.clipsToBounds = true
        return $0
    }(ASAuthorizationAppleIDButton())
    lazy var googleBtn = CircleButton(image: "google", background: .black, action: btnAction)
    lazy var facebookBtn = CircleButton(image: "git", background: .black, action: btnAction)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        viewDidLoad()
        setConstraints()
    }
    
    private func viewDidLoad() {
        backgroundColor = .appBlack
        [titleLabel, emailField, passwordField, forgotButton, nextBtn, signInLabel, signWithLabel, appleBtn, backLabel, googleBtn, facebookBtn].forEach { item in
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
            forgotButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            nextBtn.topAnchor.constraint(equalTo: forgotButton.bottomAnchor, constant: 20),
            nextBtn.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            signInLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            signInLabel.trailingAnchor.constraint(equalTo: nextBtn.leadingAnchor),
            signInLabel.centerYAnchor.constraint(equalTo: nextBtn.centerYAnchor),
            
            signWithLabel.topAnchor.constraint(equalTo: nextBtn.bottomAnchor, constant: 70),
            signWithLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            appleBtn.topAnchor.constraint(equalTo: signWithLabel.bottomAnchor, constant: 20),
            appleBtn.centerXAnchor.constraint(equalTo: centerXAnchor),
            appleBtn.widthAnchor.constraint(equalToConstant: 54),
            appleBtn.heightAnchor.constraint(equalToConstant: 54),
            
            backLabel.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -10),  backLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            facebookBtn.topAnchor.constraint(equalTo: signWithLabel.bottomAnchor, constant: 20),
            facebookBtn.leadingAnchor.constraint(equalTo: appleBtn.trailingAnchor, constant: 30),
            facebookBtn.widthAnchor.constraint(equalToConstant: 54),
            facebookBtn.heightAnchor.constraint(equalToConstant: 54),
            
            googleBtn.topAnchor.constraint(equalTo: signWithLabel.bottomAnchor, constant: 20),
            googleBtn.leadingAnchor.constraint(equalTo: appleBtn.trailingAnchor, constant: 30),
            googleBtn.trailingAnchor.constraint(equalTo: appleBtn.leadingAnchor, constant: -30),

        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error")
    }
}



