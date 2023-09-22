//
//  UserInfoViewModel.swift
//  MyProfile
//
//  Created by t2023-m0059 on 2023/09/21.
//

import Foundation
import CoreData

class UserInfoViewModel {
    private var dataManager: DataManager
    
    init(dataManager: DataManager) {
        self.dataManager = dataManager
    }
}

extension UserInfoViewModel {
    func saveData(name: String, age: Int){
        print("saveData] name:\(name), age:\(age)")
        // name 확인
        // age 확인
        
        let data = UserInfo(name: name, age: age)
        
        self.dataManager.insertUserCoreData(userInfo: data)
    }
    
    func fetchData(){
        print("fetchData")
        let coreData = User.fetchRequest()
        self.dataManager.fetchCoreData(request: coreData)
    }
    
    func countData() -> Int {
        print("countData")
        let coreData = User.fetchRequest()
        return self.dataManager.countCoreData(request: coreData) ?? 0
    }
}
