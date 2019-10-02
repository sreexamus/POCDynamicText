//
//  NewTileView.swift
//  POCDynamicText
//
//  Created by sreekanth reddy iragam reddy on 10/1/19.
//  Copyright © 2019 United Airlines. All rights reserved.
//

//https://spin.atomicobject.com/2018/10/15/dynamic-type-static-uitableview/

//https://makeapppie.com/2019/06/05/use-dynamic-type/

import UIKit

class TileView: UITableViewCell, NibLoadable {

    @IBOutlet weak var detail2: UILabel!
    @IBOutlet weak var detail1: UILabel!
    @IBOutlet weak var name: UILabel!
    
    var systemFont = true
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // If used system Font
        
        if systemFont {
            detail2.font = UIFont.preferredFont(forTextStyle: .headline)
            name.font = UIFont.preferredFont(forTextStyle: .title1)
            detail1.font = UIFont.preferredFont(forTextStyle: .title1)
        } else {
            // custom font
            let font = UIFont(name: "HelveticaNeue-Light", size: 19)
            if #available(iOS 11.0, *) {
                detail2.font = UIFontMetrics.default.scaledFont(for: font!)
                detail1.font = UIFontMetrics.default.scaledFont(for: font!)
                  name.font = UIFontMetrics.default.scaledFont(for: font!)
            } else {
                //detail2.font = UIFont.p
                name.font = UIFont.preferredFont(forTextStyle: .title1)
                detail1.font = UIFont.preferredFont(forTextStyle: .title1)
                // Fallback on earlier versions
            }
        }
     
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
