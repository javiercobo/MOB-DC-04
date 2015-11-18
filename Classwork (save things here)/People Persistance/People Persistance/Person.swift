//
//  Person.swift
//  People Persistance
//
//  Created by Cobo, Javier on 11/16/15.
//  Copyright © 2015 Cobo, Javier. All rights reserved.
//

import Foundation
import CoreData

class Person: NSManagedObject {
    @NSManaged var name: String
    @NSManaged var age: Int32
    @NSManaged var gender: String
}
