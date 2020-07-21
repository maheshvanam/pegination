//
//  NotePresenterDelegate.swift
//  PeginationSample
//
//  Created by admin on 20/07/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

protocol NotePresenterDelegate {
    func getNotes()->[Note]
    func fetchLimitedNotes(fetchOffset:Int, fetchLimit: Int)->[Note]
}
