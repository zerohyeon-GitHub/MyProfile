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
    let tableViewList: [String] = ["이름", "나이"]
    var viewModel: UserInfoViewModel?
    
    private let mainLabel: UILabel = {
        let label = UILabel()
        label.text = "MVVM 사용하쟛"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textColor = .mainColor1
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var listTableView: UITableView = {
        let tableView = UITableView()
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        configureTableView()
        
        self.viewModel = UserInfoViewModel(userInfo: UserInfo(name: "조영현", age: 30))
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
        configureTableView()
    }
    
    // MARK: - Helpers
    private func setupView() {
        addSubview(mainLabel)
        addSubview(listTableView)
        
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            mainLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            listTableView.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 10),
            listTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            listTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            listTableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -10)
            
        ])
        
        listTableView.reloadData()
    }
    
    func configureTableView() {
        // ViewController를 UITableView의 dataSource와 delegate로 설정
        listTableView.dataSource = self
        listTableView.delegate = self
        
        listTableView.register(TextTableViewCell.self, forCellReuseIdentifier: TextTableViewCell.identifier)
    }
}

extension UserInfoView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch tableViewList[indexPath.row] {
        case "이름":
            let cellText = listTableView.dequeueReusableCell(withIdentifier: TextTableViewCell.identifier, for: indexPath) as! TextTableViewCell
            cellText.selectionStyle = UITableViewCell.SelectionStyle.none // 셀 선택 효과 없애기
            cellText.configure(with: tableViewList[indexPath.row], detail: viewModel?.name ?? "")
            
            return cellText
        case "나이":
            let cellText = listTableView.dequeueReusableCell(withIdentifier: TextTableViewCell.identifier, for: indexPath) as! TextTableViewCell
            cellText.selectionStyle = UITableViewCell.SelectionStyle.none
            cellText.configure(with: tableViewList[indexPath.row], detail: String(viewModel?.age ?? 0))
            
            return cellText
        default:
            let cellText = listTableView.dequeueReusableCell(withIdentifier: TextTableViewCell.identifier, for: indexPath) as! TextTableViewCell
            cellText.selectionStyle = UITableViewCell.SelectionStyle.none
            cellText.configure(with: "name", detail: "조영현")
            
            return cellText
        }
    }
}

extension UserInfoView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
