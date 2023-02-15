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
        email.backgroundColor = .white
        return email
    }()
    
    let userName: UITextField = {
        let userName = UITextField()
        userName.translatesAutoresizingMaskIntoConstraints = false
        userName.placeholder = "Username"
        userName.borderStyle = .roundedRect
        userName.backgroundColor = .white
        return userName
    }()
    
    let password: UITextField = {
        let password = UITextField()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.borderStyle = .roundedRect
        password.placeholder = "Password"
        password.backgroundColor = .white
        return password
    }()
    
    let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 3
        button.backgroundColor = .orange
        button.addTarget(self, action: #selector(goToSignInPage), for: .touchUpInside)
        return  button
    }()
    
    let label: UILabel = {
      let label = UILabel()
      label.text = "I already have an account"
      label.textColor = .black
      label.backgroundColor = .white
      return label
    }()
    
    let login: UIButton = {
        let login = UIButton()
        login.setTitleColor(.orange, for: .normal)
        return login
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(register)
        view.addSubview(email)
        view.addSubview(userName)
        view.addSubview(password)
        view.addSubview(signUpButton)
        view.addSubview(label)
        view.addSubview(login)
        view.backgroundColor = .white
        makeConstraint()
        }
    
    @objc func goToSignInPage() {
       // viewmodel.signUp(email)
        let destinationVC = ViewController2()
        navigationController?.pushViewController(destinationVC, animated: true)
    }
}

    
