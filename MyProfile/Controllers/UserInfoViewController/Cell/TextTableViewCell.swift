//
//  TextTableViewCell.swift
//  MyProfile
//
//  Created by t2023-m0059 on 2023/09/21.
//

import UIKit

class TextTableViewCell: UITableViewCell {

    static let identifier = "TextTableViewCell"
    
    private let titleLabel: UILabel = {
        let label = UILabel()

        label.textColor = .label
        label.font = .systemFont(ofSize: 10, weight: .bold)
        label.numberOfLines = 1
        label.textAlignment = .left
        label.textColor = UIColor(red: 0.54, green: 0.49, blue: 0.22, alpha: 1.00)
        
        return label
    }()
    
    private let titleTextField: UITextField = {
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
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUI()
        setConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        setUI()
        setConstraint()
    }
    
    private func setUI() {
        addSubview(titleStackView)
    }
    
    private func setConstraint() {
        NSLayoutConstraint.activate([
            titleStackView.topAnchor.constraint(equalTo: topAnchor),
            titleStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            titleStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
        ])
    }
    
    func configure(with title: String, detail: String) {
        titleLabel.text = title
        titleTextField.text = detail
    }

}
