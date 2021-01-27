//
//  Receipes+CoreDataProperties.swift
//  Cooking book
//
//  Created by Oleh on 1/24/21.
//  Copyright © 2021 Oleh. All rights reserved.
//
//

import Foundation
import CoreData


extension Receipes {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Receipes> {
        return NSFetchRequest<Receipes>(entityName: "Receipes")
    }

    @NSManaged public var amount: Int32
    @NSManaged public var name: String?
    @NSManaged public var descript: String?

}
