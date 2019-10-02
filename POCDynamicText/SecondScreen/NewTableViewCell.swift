//
//  NewTableViewCell.swift
//  POCDynamicText
//
//  Created by sreekanth reddy iragam reddy on 10/2/19.
//  Copyright © 2019 United Airlines. All rights reserved.
//

import UIKit

class NewTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionViewHeight: NSLayoutConstraint!
    @IBOutlet weak var collectionCell: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionCell.delegate = self
        collectionCell.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

extension NewTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewCollectionCell", for: indexPath) as! NewCollectionCellCollectionViewCell
        cell.delegate = self
        return cell
    }
}

extension NewTableViewCell: NewCollectionCellCollectionViewCellDelegate {
    func updateTheHeight() {
        collectionCell.collectionViewLayout.invalidateLayout()
        collectionViewHeight.constant = collectionCell.collectionViewLayout.collectionViewContentSize.height
    }
}
