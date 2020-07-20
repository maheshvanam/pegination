//
//  DataService.swift
//  PeginationSample
//
//  Created by admin on 20/07/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit
import CoreData

class DataService {
    static let shared = DataService()
    
    private init () { }
    
    private let appDelegate = UIApplication.shared.delegate as! AppDelegate
    private let context = ( UIApplication.shared.delegate as! AppDelegate ).persistentContainer.viewContext
    private let fetchRequest = NSFetchRequest<Note>(entityName: "Note")
    
    func createNote() -> Note {
        return Note(context: context)
    }
    
    func save() {
        appDelegate.saveContext()
    }
    
    func getNotes() -> [Note] {
        var notes:[Note] = []
        do {
            let result = try context.fetch( fetchRequest ) as NSArray
            if result.count > 0 {
                notes = result as! [Note]
            }
        }catch {
            print(error.localizedDescription)
        }
        return notes
    }
}
