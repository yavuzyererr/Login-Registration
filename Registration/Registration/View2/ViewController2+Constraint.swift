//
//  ViewController2+Constraint.swift
//  Registration
//
//  Created by Yavuz Yerer on 10.02.2023.
//

import UIKit
import SnapKit

extension ViewController2 {
    func makeConstraints(){
        setupTopView()
        setupTextFields()
    }
   private func setupTopView() {
        view.addSubview(topView)
        topView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        topView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        topView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
   private  func setupTextFields() {
        
        let stackView = UIStackView(arrangedSubviews: [userName, password, signInButton])
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
