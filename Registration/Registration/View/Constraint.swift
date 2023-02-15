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
    private func makeRegisterConstraint(){
        register.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.right.equalToSuperview()
            make.left.equalToSuperview()
        }
    }
    private func makeEmailTextField(){
       
        
        
    }
}
