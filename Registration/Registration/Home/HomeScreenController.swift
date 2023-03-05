//
//  HomeScreen.swift
//  Registration
//
//  Created by Yavuz Yerer on 18.02.2023.
//

import UIKit

class HomeScreenController: UIViewController {
    let customView: UIView = {
        let customView = UIView()
        customView.backgroundColor = .orange
        customView.translatesAutoresizingMaskIntoConstraints = false
        customView.layer.cornerRadius = 10
        return customView
    }()
    let welcomeLabel: UILabel = {
      let welcomeLabel = UILabel()
        welcomeLabel.text = "HELLO USER"
        welcomeLabel.textColor = .black
        welcomeLabel.font = .systemFont(ofSize: 30)
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        return welcomeLabel
    }()
    let logOut: UIButton = {
      let logOut = UIButton()
        logOut.setTitle("LogOut", for: .normal)
        logOut.setTitleColor(.black, for: .normal)
        logOut.backgroundColor = .blue
        logOut.translatesAutoresizingMaskIntoConstraints = false
        logOut.layer.cornerRadius = 5
        logOut.addTarget(self, action: #selector(goToLoginScreen), for: .touchUpInside)
        return logOut
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(logOut)
        view.addSubview(customView)
        customView.addSubview(welcomeLabel)
        view.backgroundColor = .white
        makeConstraints()
    }
    
    @objc func goToLoginScreen(){
        UserDefaults.standard.set(false, forKey: "isLogin")
        navigationController?.popViewController(animated: true)
    }
}
