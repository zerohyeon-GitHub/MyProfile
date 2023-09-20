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
        label.font = UIFont.boldSystemFont(ofSize: 20)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let listButton: UIButton = {
        let button = UIButton()
        
        let imageConfig = UIImage.SymbolConfiguration(pointSize: 25, weight: .light)
        let image = UIImage(systemName: "line.3.horizontal", withConfiguration: imageConfig)
        
        button.setImage(image, for: .normal)
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
    
    private let myInfo1Label: UILabel = {
        let label = UILabel()
        label.text = "조영현"
        label.font = UIFont.systemFont(ofSize: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let myInfo2Label: UILabel = {
        let label = UILabel()
        label.text = "iOS Developer 🏋️"
        label.font = UIFont.systemFont(ofSize: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let myInfo3Label: UILabel = {
        let label = UILabel()
        label.text = "https://github.com/zerohyeon-GitHub"
        label.font = UIFont.systemFont(ofSize: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var myInfoStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [myInfo1Label, myInfo2Label, myInfo3Label])
        stackView.spacing = 2
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    private let followButton: UIButton = {
        let button = UIButton(type: .custom)
        
        button.backgroundColor = .red
        
        button.setTitle("Follow", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.setTitleColor(.black, for: .normal)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let messageButton: UIButton = {
        let button = UIButton(type: .custom)
        
        button.backgroundColor = .red
        
        button.setTitle("Message", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.setTitleColor(.black, for: .normal)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var middleBar1StackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [followButton, messageButton])
        stackView.spacing = 5
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let underBarButton: UIButton = {
        let button = UIButton()
        
        button.backgroundColor = .red
        button.widthAnchor.constraint(equalToConstant: 30).isActive = true
        button.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        button.setImage(UIImage(systemName: "chevron.down"), for: .normal)
        button.tintColor = .darkGray
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var middleBar2StackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [middleBar1StackView, underBarButton])
        stackView.spacing = 5
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
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
        addSubview(myInfoStackView)
        addSubview(middleBar2StackView)
        
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
            
            myInfoStackView.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 14),
            myInfoStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 28),
            
            middleBar2StackView.topAnchor.constraint(equalTo: myInfoStackView.bottomAnchor, constant: 14),
            middleBar2StackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 28),
            middleBar2StackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -28),
        ])
    }
}

