//
//  NotePresenter.swift
//  PeginationSample
//
//  Created by admin on 20/07/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

class NotePresenter: NotePresenterDelegate {
    
    let dbManager = DataService.shared
    
    func getNotes()->[Note] {
        return dbManager.getNotes()
    }
}
