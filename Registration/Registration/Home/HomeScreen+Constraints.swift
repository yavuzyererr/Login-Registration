//
//  HomeScreen+Constraints.swift
//  Registration
//
//  Created by Yavuz Yerer on 18.02.2023.
//

import UIKit
import SnapKit
extension HomeScreenController{
    func makeConstraints(){
        makeLogOutConstraint()
        makeLabelConstraint()
    }
    private func makeLabelConstraint() {
        welcomeLabel.snp.makeConstraints { make in
            make.top.equalTo(20)
            make.trailing.equalTo(20)
        }
    }
    private func makeLogOutConstraint(){
        logOut.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.centerY.equalTo(view.snp.centerY)
        }
    }
}
