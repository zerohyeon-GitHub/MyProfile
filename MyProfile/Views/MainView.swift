//
//  MainView.swift
//  MyProfile
//
//  Created by t2023-m0059 on 2023/09/21.
//

import Foundation
import UIKit

class MainView: UIView {
    // MARK: - Properties
    private let userNameLabel: UILabel = {
        let label = UILabel()
        label.text = "my Name"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
}
