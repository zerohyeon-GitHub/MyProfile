//
//  UserInfoViewController.swift
//  MyProfile
//
//  Created by t2023-m0059 on 2023/09/21.
//

import Foundation
import UIKit

class MVVMViewController: UIViewController {
    
    // MARK: - Properties
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userInfoView = MVVMView()
        
        view.backgroundColor = .white
        
        view.addSubview(userInfoView)
        userInfoView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            userInfoView.topAnchor.constraint(equalTo: view.topAnchor),
            userInfoView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            userInfoView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            userInfoView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
}
