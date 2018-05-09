//
//  TodayViewCollectionViewController.swift
//  SensorKit-Demo
//
//  Created by Joe Blau on 5/8/18.
//  Copyright © 2018 Bodlog. All rights reserved.
//

import UIKit


class TodayViewCollectionViewController: UICollectionViewController {

    private let dataSource = TodayViewDataSource()
    private let delegate = TodayViewDelegateFlowLayout()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .white
        collectionView?.register(BaseRoundedCardCell.self, forCellWithReuseIdentifier: String(describing: BaseRoundedCardCell.self))
        collectionView?.dataSource = dataSource
        collectionView?.delegate = delegate
        collectionView?.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 20, right: 0)
    }

}
