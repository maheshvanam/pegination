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
    var dataSource:[Note] = []
    var notePresenter:NotePresenterDelegate!
    override func viewDidLoad() {
        super.viewDidLoad()
        notePresenter = NotePresenter()
        collectionView.register(UINib(nibName: Constants.CellId.NOTE_CELL_ID, bundle: nil), forCellWithReuseIdentifier: Constants.CellId.NOTE_CELL_ID)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        dataSource = self.notePresenter.getNotes()
        collectionView.reloadData()
    }
}
