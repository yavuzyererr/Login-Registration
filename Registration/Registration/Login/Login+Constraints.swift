//
//  Constraints.swift
//  Registration
//
//  Created by Yavuz Yerer on 15.02.2023.
//

import Foundation
import SnapKit
extension LoginController {
    func makeConstraints() {
        makeLoginConstraint()
        makeStackViewConstraint()
        makeCustomViewConstraint()
        makeEmailConstraint()
        makePasswordConstraint()
        makeSignInConstraint()
    }
    
    private func makeCustomViewConstraint() {
        customView.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.height.equalTo(100)
            make.width.equalTo(300)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(40)
        }
    }
    private func makeLoginConstraint() {
        login.snp.makeConstraints { make in
            make.centerX.equalTo(customView.snp.centerX)
            make.centerY.equalTo(customView.snp.centerY)
        }
    }
    private func makeEmailConstraint() {
        email.snp.makeConstraints { make in
            make.top.equalTo(customView.snp.bottom).offset(50)
            make.centerX.equalTo(view.snp.centerX)
            make.width.equalTo(300)
            make.height.equalTo(50)
        }
    }
    private func makePasswordConstraint() {
        password.snp.makeConstraints { make in
            make.top.equalTo(email.snp.bottom).offset(25)
            make.centerX.equalTo(view.snp.centerX)
            make.width.equalTo(300)
            make.height.equalTo(50)
        }
    }
    private func makeSignInConstraint() {
        signInButton.snp.makeConstraints { make in
            make.top.equalTo(password.snp.bottom).offset(50)
            make.centerX.equalTo(view.snp.centerX)
            make.width.equalTo(200)
            make.height.equalTo(60)
        }
    }
    private func makeStackViewConstraint() {
        stackview.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-50)
            make.centerX.equalTo(view.snp.centerX)
        }
    }
}
