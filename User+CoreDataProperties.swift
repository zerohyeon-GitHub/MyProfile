//
//  User+CoreDataProperties.swift
//  MyProfile
//
//  Created by t2023-m0059 on 2023/09/22.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var name: String?
    @NSManaged public var age: Int16

}

extension User : Identifiable {

}
