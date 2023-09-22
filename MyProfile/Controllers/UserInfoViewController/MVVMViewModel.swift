//
//  UserInfoViewModel.swift
//  MyProfile
//
//  Created by t2023-m0059 on 2023/09/21.
//

import Foundation

class MVVMViewModel {
    private var userInfo: UserInfo
    
    init(userInfo: UserInfo) {
        self.userInfo = userInfo
    }
    
    var name: String {
        return userInfo.name
    }
    
    var age: Int {
        return userInfo.age
    }
}
