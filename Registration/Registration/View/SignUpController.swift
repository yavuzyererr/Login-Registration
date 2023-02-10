//
//  SignUpController.swift
//  Registration
//
//  Created by Yavuz Yerer on 9.02.2023.
//

import UIKit

class  SignUpController: UIViewController {
    
    let topView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
        return  button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTopView()
        setupTextFields()
        view.backgroundColor = .white
        }
    
    func setupTopView() {
            view.addSubview(topView)
            topView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            topView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
            topView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
            topView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        }
    func setupTextFields() {
            
            let stackView = UIStackView(arrangedSubviews: [email, userName, password, signUpButton])
            stackView.axis = .vertical
            stackView.spacing = 10
            stackView.distribution = .fillEqually
            stackView.translatesAutoresizingMaskIntoConstraints = false
            
            view.addSubview(stackView)
            stackView.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 40).isActive = true
            stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
            stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
            stackView.heightAnchor.constraint(equalToConstant: 200).isActive = true
            
        }
}

    
