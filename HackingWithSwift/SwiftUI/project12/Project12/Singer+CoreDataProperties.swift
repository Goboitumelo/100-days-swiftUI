//
//  Singer+CoreDataProperties.swift
//  Project12
//
//  Created by Goboitumelo Mpuru on 15/06/2024.
//
//

import Foundation
import CoreData


extension Singer {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Singer> {
        return NSFetchRequest<Singer>(entityName: "Singer")
    }

    @NSManaged public var lastName: String?
    @NSManaged public var firstName: String?

    var wrappedFirstName: String {
        firstName ?? "Unknown"
    }

    var wrappedLastName: String {
        lastName ?? "Unknown"
    }
}
