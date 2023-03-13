//
//  Singer+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Matheus Viana on 12/03/23.
//
//

import Foundation
import CoreData


extension Singer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Singer> {
        return NSFetchRequest<Singer>(entityName: "Singer")
    }

    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    
    public var wrappedFirstName: String {
        firstName ?? "Unknown"
    }
    
    public var wrappedLastName: String {
        firstName ?? "Unknown"
    }

}

extension Singer : Identifiable {

}
