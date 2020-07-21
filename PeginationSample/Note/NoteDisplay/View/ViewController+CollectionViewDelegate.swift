//
//  ViewController+CollectionViewDelegate.swift
//  PeginationSample
//
//  Created by admin on 20/07/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

private let cellHeight  = 50.0
private var loadingRow = 10
extension ViewController:UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.CellId.NOTE_CELL_ID, for: indexPath ) as! NoteViewCell
        cell.updateView(note: dataSource[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 50, height: 100.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
       // print("ASDas",indexPath.row)
            if indexPath.row == loadingRow+1 {
                updateNextSet()
                loadingRow = loadingRow + 10
            }
    }

    func updateNextSet(){
        print("fetched..")
       let notes = self.notePresenter.fetchLimitedNotes(fetchOffset:10, fetchLimit: 10)
        dataSource.append(contentsOf: notes )
        collectionView.reloadData()
    }
    
}
