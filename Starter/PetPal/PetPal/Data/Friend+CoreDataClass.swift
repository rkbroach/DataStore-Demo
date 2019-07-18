//
//  Friend+CoreDataClass.swift
//  PetPal
//
//  Created by Rohan Kevin Broach on 7/8/19.
//  Copyright © 2019 Razeware. All rights reserved.
//
//

import Foundation
import CoreData

public class Friend: NSManagedObject {
    
    var age: Int {
        if let dob = dob as Date? {
            return Calendar.current.dateComponents([.year], from: dob, to: Date()).year!
        }
        return 0
    }
}
