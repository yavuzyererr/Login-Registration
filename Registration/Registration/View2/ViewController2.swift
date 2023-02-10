//
//  ViewController2.swift
//  Registration
//
//  Created by Yavuz Yerer on 10.02.2023.
//

import UIKit
class ViewController2 : UIViewController {
    
    let topView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
    let signInButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 3
        button.backgroundColor = UIColor.lightGray
        return  button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        makeConstraints()
        view.backgroundColor = .white
    }
   
    
}
