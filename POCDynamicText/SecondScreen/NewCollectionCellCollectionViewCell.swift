//
//  NewCollectionCellCollectionViewCell.swift
//  POCDynamicText
//
//  Created by sreekanth reddy iragam reddy on 10/2/19.
//  Copyright © 2019 United Airlines. All rights reserved.
//

import UIKit

protocol NewCollectionCellCollectionViewCellDelegate {
    func updateTheHeight()
}

class NewCollectionCellCollectionViewCell: UICollectionViewCell {
    
    var delegate: NewCollectionCellCollectionViewCellDelegate?
    
    @IBOutlet weak var subTitle: UILabel!
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        subTitle.font = UIFont.preferredFont(forTextStyle: .headline)
        title.font = UIFont.preferredFont(forTextStyle: .title1)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        delegate?.updateTheHeight()
    }
}
