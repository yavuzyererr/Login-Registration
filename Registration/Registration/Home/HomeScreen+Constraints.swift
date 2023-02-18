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
        makeViewConstraint()
    }
    private func makeViewConstraint() {
        customView.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.centerY.equalTo(view.snp.centerY)
            make.height.equalTo(100)
            make.width.equalTo(300)
            
           
        }
    }
    private func makeLabelConstraint() {
        welcomeLabel.snp.makeConstraints { make in
            make.centerX.equalTo(customView.snp.centerX)
            make.centerY.equalTo(customView.snp.centerY)
        }
    }
    private func makeLogOutConstraint(){
        logOut.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-40)
            make.width.equalTo(250)
            make.height.equalTo(100)
        }
    }
}
