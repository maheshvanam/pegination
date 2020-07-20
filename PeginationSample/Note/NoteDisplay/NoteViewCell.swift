//
//  NoteViewCell.swift
//  PeginationSample
//
//  Created by admin on 20/07/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class NoteViewCell: UICollectionViewCell {

    @IBOutlet weak var descriptionField: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 7
        // Initialization code
    }

}
