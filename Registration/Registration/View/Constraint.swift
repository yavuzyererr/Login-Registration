//
//  Constraint.swift
//  Registration
//
//  Created by Yavuz Yerer on 15.02.2023.
//

import Foundation
import SnapKit

extension SignUpController {
    func makeConstraint(){
        makeRegisterConstraint()
        makeEmailConstraint()
        makeUserNameConstraint()
        makePasswordConstraint()
        makeSignUpButtonConstraint()
        makeLabelConstraint()
        makeLoginConstraint()
    }
    private func makeRegisterConstraint() {
        register.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(100)
            make.centerX.equalTo(view.snp.centerX)
        }
    }
    private func makeEmailConstraint() {
        email.snp.makeConstraints { make in
            make.top.equalTo(register).offset(250)
            make.centerX.equalTo(register.snp.centerX)
        }
    }
    private func makeUserNameConstraint() {
        userName.snp.makeConstraints { make in
            make.top.equalTo(email).offset(50)
            make.centerX.equalTo(email.snp.centerX)
        }
    }
    private func makePasswordConstraint() {
        password.snp.makeConstraints { make in
            make.top.equalTo(userName).offset(50)
            make.centerX.equalTo(userName.snp.centerX)
        }
    }
    private func makeSignUpButtonConstraint() {
        signUpButton.snp.makeConstraints { make in
            make.top.equalTo(password).offset(150)
            make.centerX.equalTo(password.snp.centerX)
        }
    }
    private func makeLabelConstraint() {
        label.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-75)
            make.left.equalToSuperview().offset(60)
        }
    }
    private func makeLoginConstraint() {
        login.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-68)
            make.right.equalToSuperview().offset(-90)
            
        }
    }
}
