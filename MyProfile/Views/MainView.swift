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
    private let mainLabel: UILabel = {
        let label = UILabel()
        label.text = "영현이의 개인 과제"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textColor = .mainColor1
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let uiPageButton: UIButton = {
        let button = UIButton(type: .custom)
        
        button.backgroundColor = .subColor2
        
        button.layer.borderWidth = 1.0
        button.layer.borderColor = UIColor.mainColor1?.cgColor
        button.layer.cornerRadius = 6.0
        
        button.setTitle("UI 화면으로 이동", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.setTitleColor(.mainColor1, for: .normal)
        
        return button
    }()
    
    let mvvmPageButton: UIButton = {
        let button = UIButton(type: .custom)
        
        button.backgroundColor = .subColor2
        
        button.layer.borderWidth = 1.0
        button.layer.borderColor = UIColor.mainColor1?.cgColor
        button.layer.cornerRadius = 6.0
        
        button.setTitle("MVVM 화면으로 이동", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.setTitleColor(.mainColor1, for: .normal)
        
        return button
    }()
    
    let coreDataPageButton: UIButton = {
        let button = UIButton(type: .custom)
        
        button.backgroundColor = .subColor2
        
        button.layer.borderWidth = 1.0
        button.layer.borderColor = UIColor.mainColor1?.cgColor
        button.layer.cornerRadius = 6.0
        
        button.setTitle("CoreData 화면으로 이동", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.setTitleColor(.mainColor1, for: .normal)
        
        return button
    }()
    
    private lazy var mainButtonStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [uiPageButton, mvvmPageButton, coreDataPageButton])
        stackView.spacing = 20
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
        addSubview(mainLabel)
        addSubview(mainButtonStackView)
        
        NSLayoutConstraint.activate([
            mainLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            mainLabel.bottomAnchor.constraint(equalTo: mainButtonStackView.topAnchor, constant: -100),
            
            mainButtonStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            mainButtonStackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            mainButtonStackView.widthAnchor.constraint(equalToConstant: 300),
            mainButtonStackView.heightAnchor.constraint(equalToConstant: 150),
        ])
    }
}
