//
//  HomeScreen.swift
//  Registration
//
//  Created by Yavuz Yerer on 18.02.2023.
//

import UIKit

class HomeScreenController: UIViewController {
    let welcomeLabel: UILabel = {
      let welcomeLabel = UILabel()
        welcomeLabel.text = "HELLO USER"
        return welcomeLabel
    }()
    let logOut: UIButton = {
      let logOut = UIButton()
        logOut.setTitle("LogOut", for: .normal)
        logOut.setTitleColor(.white, for: .normal)
        logOut.translatesAutoresizingMaskIntoConstraints = false
        logOut.layer.cornerRadius = 5
        logOut.addTarget(self, action: #selector(goToLoginScreen), for: .touchUpInside)
        return logOut
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(logOut)
        makeConstraints()
    }
    @objc func goToLoginScreen(){
        let destinationVc = LoginController()
        navigationController?.present(destinationVc, animated: true)
    }
}
