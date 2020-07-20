//
//  ViewController.swift
//  PeginationSample
//
//  Created by admin on 17/07/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UINib(nibName: Constants.CellId.NOTE_CELL_ID, bundle: nil), forCellWithReuseIdentifier: Constants.CellId.NOTE_CELL_ID)
        
    }
}
