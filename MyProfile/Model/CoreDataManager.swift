//
//  CoreDataManager.swift
//  MyProfile
//
//  Created by t2023-m0059 on 2023/09/21.
//

import Foundation
import CoreData

class CoreDataManager {
    // MARK: Core Data 함수 - UserInfo
    // Core Data Insert
    func insertCoreData(userInfo: UsersInfo) -> Bool {
        print("insert Core Data")
        // NSManagedObjectContext를 가져온다.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        // Entity를 가져온다.
        let entity = NSEntityDescription.entity(forEntityName: "UserInfo", in: context)
        
        if let entity = entity {
            let managedObject = NSManagedObject(entity: entity, insertInto: context)
            
            managedObject.setValue(userInfo.name, forKey: "name")
            managedObject.setValue(userInfo.id, forKey: "id")
            managedObject.setValue(userInfo.pw, forKey: "pw")
            managedObject.setValue(userInfo.email, forKey: "email")
            
            do {
                try context.save()
                return true
            } catch {
                print(error.localizedDescription)
                return false
            }
        } else {
            return false
        }
    }
}
