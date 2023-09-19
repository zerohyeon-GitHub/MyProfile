//
//  ProfileViewController.swift
//  MyProfile
//
//  Created by t2023-m0059 on 2023/09/19.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    
    // MARK: - Properties

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let profileView = ProfileView()
        
        view.backgroundColor = .white
        
        view.addSubview(profileView)
        profileView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            profileView.topAnchor.constraint(equalTo: view.topAnchor),
            profileView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            profileView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
}
