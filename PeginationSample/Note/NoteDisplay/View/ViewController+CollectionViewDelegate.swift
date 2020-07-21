//
//  ViewController+CollectionViewDelegate.swift
//  PeginationSample
//
//  Created by admin on 20/07/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

private let cellHeight:Float  = 100
private let freeWidth:Float   = 50
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
        let viewWidth:CGFloat =  view.frame.width
        return CGSize(width: viewWidth - CGFloat(freeWidth) , height: CGFloat(cellHeight))
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        let offsetY = scrollView.contentOffset.y
        let height = scrollView.contentSize.height
        if offsetY > height - scrollView.frame.size.height {
            if fetchMore {
                self.updateNextSet()
            }
        }
    }
    
    func updateNextSet(){
        let notes = self.notePresenter.fetchLimitedNotes(fetchOffset: offcet, fetchLimit: limit)
        let previousCount = dataSource.count
        dataSource.append(contentsOf: notes )
        let currentCount = dataSource.count
        offcet = currentCount
        fetchMore = currentCount == previousCount ? false : true
        collectionView.reloadData()
    }
    
}
