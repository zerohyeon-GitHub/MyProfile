//
//  ProfileView.swift
//  MyProfile
//
//  Created by t2023-m0059 on 2023/09/19.
//

import Foundation
import UIKit

class ProfileView: UIView {
    // MARK: - Properties
    private let userNameLabel: UILabel = {
        let label = UILabel()
        label.text = "my Name"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let listButton: UIButton = {
        let button = UIButton()
        
        button.setImage(UIImage(systemName: "line.3.horizontal"), for: .normal)
        
        return button
    }()
    
    private let profileImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "person.crop.circle"))
        
        return imageView
    }()
    
    private let postNumLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let postLabel: UILabel = {
        let label = UILabel()
        label.text = "post"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var postStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [postNumLabel, postLabel])
        stackView.spacing = 10
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        
        return stackView
    }()
    
    private let followerNumLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let followerLabel: UILabel = {
        let label = UILabel()
        label.text = "follower"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var followerStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [followerNumLabel, followerLabel])
        stackView.spacing = 10
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        
        return stackView
    }()
    
    private let followingNumLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let followingLabel: UILabel = {
        let label = UILabel()
        label.text = "following"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var followingStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [followingNumLabel, followingLabel])
        stackView.spacing = 10
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        
        return stackView
    }()
    
    private lazy var NumStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [postStackView, followerStackView, followingStackView])
        stackView.spacing = 10
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    // MARK: - Helpers
    
    private func setupView() {
        addSubview(userNameLabel)
//        addSubview(listButton)
//        addSubview(profileImageView)
//        addSubview(NumStackView)
        
        NSLayoutConstraint.activate([
            userNameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
//            userNameLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
            userNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
}

