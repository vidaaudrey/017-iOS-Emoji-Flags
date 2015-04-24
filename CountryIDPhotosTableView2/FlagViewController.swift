//
//  FlagViewController.swift
//  CountryIDPhotosTableView2
//
//  Created by Audrey Li on 4/23/15.
//  Copyright (c) 2015 shomigo.com. All rights reserved.
//

import UIKit

class FlagViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    let countries = Countries()
    var dataSource: MultiSectionCollectionViewDataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        dataSource = MultiSectionCollectionViewDataSource(items: ["countries": countries.countries], cellIdentifier: "cell", viewController: nil, segueIdentifier: nil, configureBlock: { (cell, item) -> () in
            if let actualCell = cell as? CollectionViewCell {
                actualCell.configureForItem(item)
            }
        })
        collectionView.dataSource = dataSource
        collectionView.delegate = dataSource
    }


}
