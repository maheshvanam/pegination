//
//  Note+CoreDataProperties.swift
//  PeginationSample
//
//  Created by admin on 20/07/20.
//  Copyright © 2020 admin. All rights reserved.
//
//

import Foundation
import CoreData


extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var noteDescription: String?
}
