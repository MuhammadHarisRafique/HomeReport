//
//  Status+CoreDataProperties.swift
//  HomeReport
//
//  Created by SGI-Mac7 on 30/03/2018.
//  Copyright © 2018 Slash Global. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Status {

    @NSManaged var isForSale: NSNumber?
    @NSManaged var home: Home?

}
