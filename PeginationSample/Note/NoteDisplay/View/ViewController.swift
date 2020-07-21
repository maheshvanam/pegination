//
//  ViewController.swift
//  PeginationSample
//
//  Created by admin on 17/07/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

private let initialOffcet = 0
private let initialLimit  = 10
class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    var dataSource:[Note] = []
    var notePresenter:NotePresenterDelegate!
    var limit = 5
    var offcet:Int!
    var fetchMore:Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        notePresenter = NotePresenter()
        collectionView.register(UINib(nibName: Constants.CellId.NOTE_CELL_ID, bundle: nil), forCellWithReuseIdentifier: Constants.CellId.NOTE_CELL_ID)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        dataSource = self.notePresenter.fetchLimitedNotes(fetchOffset:initialOffcet, fetchLimit: initialLimit)
        offcet = dataSource.count
        fetchMore = true
        collectionView.reloadData()
    }
}
