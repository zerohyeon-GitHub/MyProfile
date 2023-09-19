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
        button.tintColor = .darkGray
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let profileImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "SpiderMan"))
        
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 50
        imageView.clipsToBounds = true
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.gray.cgColor
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let postNumLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 18)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let postLabel: UILabel = {
        let label = UILabel()
        label.text = "post"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var postStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [postNumLabel, postLabel])
        stackView.spacing = 0
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        
        return stackView
    }()
    
    private let followerNumLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 18)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let followerLabel: UILabel = {
        let label = UILabel()
        label.text = "follower"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var followerStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [followerNumLabel, followerLabel])
        stackView.spacing = 0
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        
        return stackView
    }()
    
    private let followingNumLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 18)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let followingLabel: UILabel = {
        let label = UILabel()
        label.text = "following"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var followingStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [followingNumLabel, followingLabel])
        stackView.spacing = 0
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        
        return stackView
    }()
    
    private lazy var numStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [postStackView, followerStackView, followingStackView])
        stackView.spacing = 0
        stackView.axis = .horizontal
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
        addSubview(listButton)
        addSubview(profileImageView)
        addSubview(numStackView)
        
        NSLayoutConstraint.activate([
            userNameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            userNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            listButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            listButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            profileImageView.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 14),
            profileImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 28),
            profileImageView.widthAnchor.constraint(equalToConstant: 100),
            profileImageView.heightAnchor.constraint(equalToConstant: 100),
            
            numStackView.centerYAnchor.constraint(equalTo: profileImageView.centerYAnchor),
            numStackView.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 10),
            numStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -28),
        ])
    }
}

