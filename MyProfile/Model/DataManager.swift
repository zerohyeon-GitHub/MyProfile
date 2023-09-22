//
//  DataManager.swift
//  MyProfile
//
//  Created by t2023-m0059 on 2023/09/21.
//

import Foundation
import CoreData
import UIKit

class DataManager {
    private var userInfo: [UserInfo] = []
    private var userId: [UserId] = []
    
    static let shared = DataManager()
}

extension DataManager {
    // MARK: Core Data 함수 - UserInfo
    // Core Data Insert
    func insertUserCoreData(userInfo: UserInfo) -> Bool {
        print("insert Core Data")
        // NSManagedObjectContext를 가져온다.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        // Entity를 가져온다.
        let entity = NSEntityDescription.entity(forEntityName: "User", in: context)
        
        if let entity = entity {
            let managedObject = NSManagedObject(entity: entity, insertInto: context)
            
                managedObject.setValue(userInfo.name, forKey: "name")
                managedObject.setValue(userInfo.age, forKey: "age")
            
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
    
    func insertTaskCoreData(userId: UserId) -> Bool {
        print("insert Core Data")
        // NSManagedObjectContext를 가져온다.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        // Entity를 가져온다.
        let entity = NSEntityDescription.entity(forEntityName: "Task", in: context)
        
        if let entity = entity {
            let managedObject = NSManagedObject(entity: entity, insertInto: context)
            
                managedObject.setValue(userId.id, forKey: "id")
                managedObject.setValue(userId.title, forKey: "title")
                managedObject.setValue(userId.createDate, forKey: "createDate")
                managedObject.setValue(userId.modifyDate, forKey: "modifyDate")
                managedObject.setValue(userId.isCompleted, forKey: "isCompleted")
            
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
    
    // Core Data Count
    func countCoreData<T: NSManagedObject>(request: NSFetchRequest<T>) -> Int? {
        print("count Core Data")
        // NSManagedObjectContext를 가져온다.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        do {
            let count = try context.count(for: request)
            return count
        } catch {
            return nil
        }
    }
    
    // Core Data Fetch
    func fetchCoreData<T: NSManagedObject>(request: NSFetchRequest<T>) -> [T] {
        print("fetch Core Data")
        // NSManagedObjectContext를 가져온다.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        do {
            let fetchResult = try context.fetch(request)
            return fetchResult
        } catch {
            print(error.localizedDescription)
            return []
        }
    }
}
