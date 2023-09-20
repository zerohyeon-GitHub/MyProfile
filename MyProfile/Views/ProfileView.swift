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
    
    // MARK: Middle Bar
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
        stackView.spacing = 8
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
        stackView.spacing = 8
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.alignment = .fill
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    // MARK: Nav gallery
    
    // MARK: Collection View
    let galleryCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .blue
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        
        configureCollectionView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
        
        configureCollectionView()
    }
    
    // MARK: - Helpers
    private func setupView() {
        addSubview(userNameLabel)
        addSubview(listButton)
        addSubview(profileImageView)
        addSubview(numStackView)
        addSubview(myInfoStackView)
        addSubview(middleBar2StackView)
        addSubview(galleryCollectionView)
        
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
            
            galleryCollectionView.topAnchor.constraint(equalTo: middleBar2StackView.bottomAnchor, constant: 10),
            galleryCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            galleryCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            galleryCollectionView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 10)
        ])
    }
    
    func configureCollectionView() {
        galleryCollectionView.register(GalleryCollectionViewCell.self, forCellWithReuseIdentifier: GalleryCollectionViewCell.identifier)
        // 컬렉션 뷰의 기능을 누가 사용하지는지 ? 👉 self 즉, 나 자신 클래스인 MainViewController
        galleryCollectionView.delegate = self
        //  컬렉션 뷰의 데이타 제공자는 ? 👉  self 즉, 나 자신 클래스인 MainViewController
        galleryCollectionView.dataSource = self
    }
}

extension ProfileView: UICollectionViewDelegate {
    
}

extension ProfileView: UICollectionViewDataSource {
    // collection view의 item 갯수
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 300
    }
    
    // Collection View의 cell 표시 방법
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GalleryCollectionViewCell.identifier, for: indexPath) as? GalleryCollectionViewCell else { return UICollectionViewCell()
        }
        cell.backgroundColor = .white
        return cell
    }
}

extension ProfileView: UICollectionViewDelegateFlowLayout {
    // 위 아래 간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    // 옆 간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width / 3 - 1 ///  3등분하여 배치, 옆 간격이 1이므로 1을 빼줌
        print("collectionView width=\(collectionView.frame.width)")
        print("cell하나당 width=\(width)")
//        print("root view width = \(self.view.frame.width)")
        
        let size = CGSize(width: width, height: width)
        return size
    }
}
