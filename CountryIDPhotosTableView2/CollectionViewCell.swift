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
            textLabel.text = "\(object.code) \(object.name)"
            switch AppConfig.showFlagCodeMode {
            case .AllCode:
                flagTextLabel.text = object.flagCode
            case .AllPNG:
                flagTextLabel.text = "  "
                if let image = UIImage(named: object.code) {
                    flagTextLabel.backgroundColor = UIColor(patternImage: image)
                }
            case .Hybrid:
                if object.isFlagCodeAvailable {
                    flagTextLabel.text = object.flagCode
                    flagTextLabel.backgroundColor = UIColor.clearColor()
                } else {
                    flagTextLabel.text = " " // must leave space, otherwise the background will not show
                    if let image = UIImage(named: object.code) {
                        flagTextLabel.frame = flagTextLabel.frame.rectByInsetting(dx: 30, dy: 0)
                        flagTextLabel.backgroundColor = UIColor(patternImage: image)
                    } else {
                        println("image not found\(object.code) \(object.name)")
                    }
                }
            }
//            if object.isFlagCodeAvailable {
//                flagTextLabel.text = object.flagCode
//                textLabel.text = "\(object.code) \(object.name)"
//            } else {
//                flagTextLabel.text = ""
//                if let image = UIImage(named: object.code) {
//                    flagTextLabel.backgroundColor = UIColor(patternImage:image)
//                    println("got image \(object.code)")
//                } else {
//                    println("image not available")
//                    println("\(object.code)  \(object.name)")
//                }
//                textLabel.text = "\(object.code) \(object.name)"
//            }
        }
    }

}
