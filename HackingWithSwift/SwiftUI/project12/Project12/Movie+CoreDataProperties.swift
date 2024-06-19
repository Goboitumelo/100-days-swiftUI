//
//  Movie+CoreDataProperties.swift
//  Project12
//
//  Created by Goboitumelo Mpuru on 15/06/2024.
//
//

import Foundation
import CoreData

extension Movie {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movie> {
        return NSFetchRequest<Movie>(entityName: "Movie")
    }

    @NSManaged public var title: String
    @NSManaged public var director: String
    @NSManaged public var year: Int16
}
