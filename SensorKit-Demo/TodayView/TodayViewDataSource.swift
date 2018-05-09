//
//  TodayViewDataSource.swift
//  SensorKit-Demo
//
//  Created by Joe Blau on 5/8/18.
//  Copyright © 2018 Bodlog. All rights reserved.
//

import UIKit

class TodayViewDataSource: NSObject, UICollectionViewDataSource {
    
    // MARK: - UICollectionViewDataSource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: BaseRoundedCardCell.self), for: indexPath)
        return cell
    }

}
