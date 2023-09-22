//
//  UserInfoViewController.swift
//  MyProfile
//
//  Created by t2023-m0059 on 2023/09/21.
//

import Foundation
import UIKit

class UserInfoViewController: UIViewController {
    
    let userInfoView = UserInfoView()
    var userInfoViewModel: UserInfoViewModel?
    
    // MARK: - Properties
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 각 버튼에 따라 addTarget설정
        userInfoView.fetchCoreDataButton.addTarget(self, action: #selector(tapFetchButton), for: .touchUpInside)
        userInfoView.saveCoreDataButton.addTarget(self, action: #selector(tapSaveButton), for: .touchUpInside)
        
        view.backgroundColor = .white
        view.addSubview(userInfoView)
        userInfoView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            userInfoView.topAnchor.constraint(equalTo: view.topAnchor),
            userInfoView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            userInfoView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            userInfoView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
        
//        userInfoViewModel?.saveData(name: "조영현", age: 30)
//
//        userInfoViewModel?.fetchData()
//
//        var count = userInfoViewModel?.countData()
//        print("count: \(count)")
//
//        print(DataManager.shared.insertUserCoreData(userInfo: UserInfo(name: "조영현", age: 30)))
//
//        let coreData = User.fetchRequest()
//        print(DataManager.shared.countCoreData(request: coreData))
//        print(DataManager.shared.fetchCoreData(request: coreData))
    }
    
    // MARK: - Helpers
    @objc func tapFetchButton() {
        let coreData = User.fetchRequest()
        let fetchData = DataManager.shared.fetchCoreData(request: coreData)
        var printCoreData: String = ""
        
        for result in fetchData {
            let data = UserInfo(name: result.name ?? "", age: Int(result.age))
            printCoreData += "\(data.name), \(data.age)\n"
        }
        
        userInfoView.printTextView.text = printCoreData
    }
    
    @objc func tapSaveButton() {
        let userInfoName: String = String(userInfoView.idTextField.text ?? "")
        let userInfoage: Int = Int(String(userInfoView.titleTextField.text ?? "0")) ?? 0
        
        DataManager.shared.insertUserCoreData(userInfo: UserInfo(name: userInfoName, age: userInfoage))
    }
}
