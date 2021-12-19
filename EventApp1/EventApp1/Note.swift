//
//  Note.swift
//  EventApp1
//
//  Created by Иван Зеков on 18/12/2021.
//  Copyright © 2021 Иван Зеков. All rights reserved.
//

import CoreData

@objc(Note)
class Note: NSManagedObject
{
    @NSManaged var id: NSNumber!
    @NSManaged var title: String!
    @NSManaged var desc: String!
    @NSManaged var deletedDate: Date?
}
