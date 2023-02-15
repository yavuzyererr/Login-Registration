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
    }
    private func makeRegisterConstraint() {
        register.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.centerX.equalTo(view.snp.centerX)
        }
    }
}
  /*  private func makeEmailConstraint() {
        email.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(400)
            make.centerX.equalTo()
        }
    }
  //  private func makeUserNameConstraint() {
        userName.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(500)
            make.centerX.equa
            
        }
    }
}*/
