//
//  ViewController2.swift
//  Registration
//
//  Created by Yavuz Yerer on 10.02.2023.
//

import UIKit
class LoginController : UIViewController {
    
    
    let login: UILabel = {
        let login = UILabel()
        login.text = "LOGIN"
        login.textColor = .white
        login.backgroundColor = .orange
        login.translatesAutoresizingMaskIntoConstraints = false
        login.font = .systemFont(ofSize: 30)
        return login
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
    
    let password: UITextField = {
        let password = UITextField()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.borderStyle = .roundedRect
        password.placeholder = "Password"
        password.backgroundColor = .lightGray
        return password
    }()
    
    let signInButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        button.backgroundColor = UIColor.lightGray
        button.addTarget(self, action: #selector(goToHomeScreen), for: .touchUpInside)
        return  button
    }()
    
    let WarningLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "I haven't an account"
        label.textColor = .black
        label.backgroundColor = .white
        return label
    }()
    
    let register: UIButton = {
        let register = UIButton(type: .system)
        register.setTitle("Register", for: .normal)
        register.setTitleColor(.orange, for: .normal)
        register.backgroundColor = .white
        register.translatesAutoresizingMaskIntoConstraints = false
        register.layer.cornerRadius = 5
        register.addTarget(self, action: #selector(goToSignUpPage), for: .touchUpInside)
        return register
    }()
    
    let stackview: UIStackView = {
        let stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.spacing = 5
        return stackview
    }()
    let alertButton:UIButton = {
        let alertButton = UIButton()
        
        return alertButton
    }()
    
    var loginViewModel = LoginViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(customView)
        customView.addSubview(login)
        view.addSubview(email)
        view.addSubview(password)
        view.addSubview(signInButton)
        view.addSubview(stackview)
        stackview.addArrangedSubview(WarningLabel)
        stackview.addArrangedSubview(register)
        makeConstraints()
        
    }
    
    @objc func goToSignUpPage() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func goToHomeScreen() {
        if let nonOpEmail = email.text, let nonOpPassword = password.text {
            if loginViewModel.checkUserInfo(email: nonOpEmail, password: nonOpPassword) {
                let destinationVC = HomeScreenController()
                navigationController?.pushViewController(destinationVC, animated: true)
            }
            else  {
                var alertMessage = UIAlertController(title: "WRONG PASSWORD", message: "Wrong Password", preferredStyle: .alert)
                alertMessage.addAction(UIAlertAction(title: "Try Again", style: UIAlertAction.Style.default))
                self.present(alertMessage, animated: true)
            }
        }
    }
}
