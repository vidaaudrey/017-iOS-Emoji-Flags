//
//  CollectionViewCell.swift
//  013-UISearchBar
//
//  Created by Audrey Li on 4/6/15.
//  Copyright (c) 2015 com.shomigo. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var flagTextLabel: UILabel!

    func configureForItem(item: AnyObject?) {
        if let object:Country = item as? Country {
            self.textLabel.text = object.name
            self.flagTextLabel.text = object.flagCode
        }
        
    }

}
