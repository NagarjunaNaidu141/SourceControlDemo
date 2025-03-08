//
//  ViewController.swift
//  SourceControlDemo
//
//  Created by Nagarjuna Naidu on 08/03/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        let usernameTextField = UITextField()
        usernameTextField.placeholder = "Enter your name"
        usernameTextField.borderStyle = .roundedRect
        usernameTextField.frame = CGRect(x: 50, y: 100, width: 250, height: 40)
        
        let passwordField = UITextField()
        passwordField.placeholder = "Enter password"
        passwordField.borderStyle = .roundedRect
        passwordField.frame = CGRect(x: 50, y: 150, width: 250, height: 40)
        passwordField.isSecureTextEntry = true
        
        let loginButton = UIButton()
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.red, for: .normal)
        loginButton.frame = CGRect(x: 50, y: 200, width: 250, height: 40)
        loginButton.addTarget(self, action: #selector(loginfun), for: .touchUpInside)
        
        
        view.addSubview(usernameTextField)
        view.addSubview(passwordField)
        view.addSubview(loginButton)
    }
    
    @objc func loginfun(){
        print("Button Tapped")
    }
    
}

