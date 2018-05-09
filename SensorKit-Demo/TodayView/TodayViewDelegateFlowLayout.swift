//
//  TodayViewDelegateFlowLayout.swift
//  SensorKit-Demo
//
//  Created by Joe Blau on 5/8/18.
//  Copyright © 2018 Bodlog. All rights reserved.
//

import UIKit

class TodayViewDelegateFlowLayout: NSObject, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.bounds.width, height: BaseRoundedCardCell.cellHeight)
    }
}
