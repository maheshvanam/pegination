//
//  AddNoteViewController.swift
//  PeginationSample
//
//  Created by admin on 20/07/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class AddNoteViewController: UIViewController {

    @IBOutlet weak var descriptionField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didSaveTapped(_ sender: Any) {
        if let text = descriptionField.text ,!text.isEmpty {
            let dbManager = DataService.shared
            let note = dbManager.createNote()
            note.noteDescription = text
            dbManager.save()
        }
        self.dismiss(animated: true, completion: nil)
    }
}
