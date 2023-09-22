//
//  UserInfoView.swift
//  MyProfile
//
//  Created by t2023-m0059 on 2023/09/21.
//

import Foundation
import UIKit

class UserInfoView: UIView {
    
    // MARK: - Properties
    let tableViewList: [String] = ["고유 ID", "제목", "생성 날짜", "수정 날짜", "완료 여부"]
    
    private let mainLabel: UILabel = {
        let label = UILabel()
        label.text = "Core Data 사용"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textColor = .mainColor1
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let idLabel: UILabel = {
        let label = UILabel()

        label.text = "고유 ID"
        label.textColor = .label
        label.font = .systemFont(ofSize: 10, weight: .bold)
        label.numberOfLines = 1
        label.textAlignment = .left
        label.textColor = .mainColor1
        
        return label
    }()
    
    let idTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.textColor = .black
        textField.tintColor = .black
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.spellCheckingType = .no
        textField.clearButtonMode = .always
        
        return textField
    }()
    
    private lazy var idStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [idLabel, idTextField])
        stackView.spacing = 0
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()

        label.text = "제목"
        label.textColor = .label
        label.font = .systemFont(ofSize: 10, weight: .bold)
        label.numberOfLines = 1
        label.textAlignment = .left
        label.textColor = .mainColor1
        
        return label
    }()
    
    let titleTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.textColor = .black
        textField.tintColor = .black
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.spellCheckingType = .no
        textField.clearButtonMode = .always
        
        return textField
    }()
    
    private lazy var titleStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, titleTextField])
        stackView.spacing = 0
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let createDateLabel: UILabel = {
        let label = UILabel()

        label.text = "생성 날짜"
        label.textColor = .label
        label.font = .systemFont(ofSize: 10, weight: .bold)
        label.numberOfLines = 1
        label.textAlignment = .left
        label.textColor = .mainColor1
        
        return label
    }()
    
    let createDateTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.textColor = .black
        textField.tintColor = .black
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.spellCheckingType = .no
        textField.clearButtonMode = .always
        
        return textField
    }()
    
    private lazy var createDateStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [createDateLabel, createDateTextField])
        stackView.spacing = 0
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let modifyDateLabel: UILabel = {
        let label = UILabel()

        label.text = "수정 날짜"
        label.textColor = .label
        label.font = .systemFont(ofSize: 10, weight: .bold)
        label.numberOfLines = 1
        label.textAlignment = .left
        label.textColor = .mainColor1
        
        return label
    }()
    
    let modifyDateTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.textColor = .black
        textField.tintColor = .black
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.spellCheckingType = .no
        textField.clearButtonMode = .always
        
        return textField
    }()
    
    private lazy var modifyDateStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [modifyDateLabel, modifyDateTextField])
        stackView.spacing = 0
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let isCompletedLabel: UILabel = {
        let label = UILabel()

        label.text = "완료 여부"
        label.textColor = .label
        label.font = .systemFont(ofSize: 10, weight: .bold)
        label.numberOfLines = 1
        label.textAlignment = .left
        label.textColor = .mainColor1
        
        return label
    }()
    
    let isCompletedTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.textColor = .black
        textField.tintColor = .black
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.spellCheckingType = .no
        textField.clearButtonMode = .always
        
        return textField
    }()
    
    private lazy var isCompletedStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [isCompletedLabel, isCompletedTextField])
        stackView.spacing = 0
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var taskStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [idStackView, titleStackView, createDateStackView, modifyDateStackView, isCompletedStackView])
        stackView.spacing = 0
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let printTextView: UITextView = {
        let textView = UITextView()
        textView.isEditable = false
        
        textView.layer.borderWidth = 1.0
        textView.layer.borderColor = UIColor.mainColor1?.cgColor
        textView.layer.cornerRadius = 6.0
        
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    let fetchCoreDataButton: UIButton = {
        let button = UIButton(type: .custom)
        
        button.backgroundColor = .subColor2
        
        button.layer.borderWidth = 1.0
        button.layer.borderColor = UIColor.mainColor1?.cgColor
        button.layer.cornerRadius = 6.0
        
        button.setTitle("coreData 표시", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.setTitleColor(.mainColor1, for: .normal)
        
        return button
    }()
    
    let saveCoreDataButton: UIButton = {
        let button = UIButton(type: .custom)
        
        button.backgroundColor = .subColor2
        
        button.layer.borderWidth = 1.0
        button.layer.borderColor = UIColor.mainColor1?.cgColor
        button.layer.cornerRadius = 6.0
        
        button.setTitle("coreData 저장", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.setTitleColor(.mainColor1, for: .normal)
        
        return button
    }()
    
    private lazy var buttonStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [fetchCoreDataButton, saveCoreDataButton])
        stackView.spacing = 10
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
        addSubview(mainLabel)
        addSubview(taskStackView)
        addSubview(printTextView)
        addSubview(buttonStackView)
        
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            mainLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
        
            taskStackView.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 10),
            taskStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            taskStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            printTextView.topAnchor.constraint(equalTo: taskStackView.bottomAnchor, constant: 10),
            printTextView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            printTextView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            printTextView.bottomAnchor.constraint(equalTo: buttonStackView.topAnchor, constant: -10),
            
            buttonStackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -10),
            buttonStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            buttonStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
        ])

    }
}
