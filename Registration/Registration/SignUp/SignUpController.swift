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
        register.text = "REGISTER"
        register.textColor = .white
        register.backgroundColor = .orange
        register.translatesAutoresizingMaskIntoConstraints = false
        register.font = .systemFont(ofSize: 30)
        return register
    }()
    
    let customView: UIView = {
        let customView = UIView()
        customView.backgroundColor = .orange
        customView.translatesAutoresizingMaskIntoConstraints = false
        customView.layer.cornerRadius = 10
        return customView
    }()
    
    let email: UITextField = {
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.placeholder = "Email"
        email.borderStyle = .roundedRect
        email.backgroundColor = .lightGray
        email.textColor = .white
        return email
    }()
    
    let userName: UITextField = {
        let userName = UITextField()
        userName.translatesAutoresizingMaskIntoConstraints = false
        userName.placeholder = "Username"
        userName.borderStyle = .roundedRect
        userName.backgroundColor = .lightGray
        userName.textColor = .white
        return userName
    }()
    
    let password: UITextField = {
        let password = UITextField()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.borderStyle = .roundedRect
        password.placeholder = "Password"
        password.textColor = .white
        password.backgroundColor = .lightGray
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
    
    let WarningLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "I already have an account"
        label.textColor = .black
        label.backgroundColor = .white
        return label
    }()
    
    let login: UIButton = {
        let login = UIButton(type: .system)
        login.setTitle("Login", for: .normal)
        login.setTitleColor(.orange, for: .normal)
        login.backgroundColor = .white
        login.translatesAutoresizingMaskIntoConstraints = false
        login.layer.cornerRadius = 5
        login.addTarget(self, action: #selector(goToSignInPage), for: .touchUpInside)
        return login
    }()
    
    let stackview: UIStackView = {
        let stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.spacing = 5
        return stackview
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(customView)
        customView.addSubview(register)
        view.addSubview(email)
        view.addSubview(userName)
        view.addSubview(password)
        view.addSubview(signUpButton)
        view.addSubview(stackview)
        stackview.addArrangedSubview(WarningLabel)
        stackview.addArrangedSubview(login)
        view.backgroundColor = .white
        makeConstraint()
    }
    
    @objc func goToSignInPage() {
        // viewmodel.signUp(email)
        let destinationVC = LoginController()
        navigationController?.isNavigationBarHidden = true
        navigationController?.pushViewController(destinationVC, animated: true)
        
    }
}


