//
//  SignUpController.swift
//  Registration
//
//  Created by Yavuz Yerer on 9.02.2023.
//

import UIKit

class  SignUpController: UIViewController {
    
    let register: UILabel = {
        let register = UILabel()
        register.textColor = .white
        register.backgroundColor = .orange
        register.translatesAutoresizingMaskIntoConstraints = false
        register.font = .systemFont(ofSize: 30)
        return register
    }()
    
    let email: UITextField = {
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.placeholder = "Email"
        email.borderStyle = .roundedRect
        email.backgroundColor = UIColor(white: 0, alpha: 0.1)
        return email
    }()
    
    let userName: UITextField = {
        let userName = UITextField()
        userName.translatesAutoresizingMaskIntoConstraints = false
        userName.placeholder = "Username"
        userName.borderStyle = .roundedRect
        userName.backgroundColor = UIColor(white: 0, alpha: 0.1)
        return userName
    }()
    
    let password: UITextField = {
        let password = UITextField()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.borderStyle = .roundedRect
        password.placeholder = "Password"
        password.backgroundColor = UIColor(white: 0, alpha: 0.1)
        return password
    }()
    
    let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 3
        button.backgroundColor = UIColor.lightGray
        button.addTarget(self, action: #selector(goToSignInPage), for: .touchUpInside)
        return  button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        makeConstraint()
        view.backgroundColor = .white
        }
    
    @objc func goToSignInPage() {
       // viewmodel.signUp(email)
        let destinationVC = ViewController2()
        navigationController?.pushViewController(destinationVC, animated: true)
    }
}

    
