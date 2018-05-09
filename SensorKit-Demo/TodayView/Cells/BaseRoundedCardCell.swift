//
//  BaseRoundedCardCell.swift
//  SensorKit-Demo
//
//  Created by Joe Blau on 5/9/18.
//  Copyright © 2018 Bodlog. All rights reserved.
//

import UIKit

class BaseRoundedCardCell: UICollectionViewCell {
    
    static let cellHeight: CGFloat = 470.0
    
    let kInnerMargin: CGFloat = 20.0
    
    private let shadowView: UIView
    
    override init(frame: CGRect) {
        shadowView = UIView()
        shadowView.translatesAutoresizingMaskIntoConstraints = false

        super.init(frame: frame)
        
        contentView.backgroundColor = .green
        shadowView.backgroundColor = .red
        
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        contentView.addSubview(shadowView)
        shadowView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: kInnerMargin).isActive = true
        shadowView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -kInnerMargin).isActive = true
        shadowView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: kInnerMargin).isActive = true
        shadowView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -kInnerMargin).isActive = true
        
        applyShadow(width: 10, height: 10)
    }
    
    private func applyShadow(width: CGFloat, height: CGFloat) {
        shadowView.layer.cornerRadius = 14
        shadowView.layer.masksToBounds = true
        shadowView.layer.shadowRadius = 8.0
        shadowView.layer.shadowColor = UIColor.black.cgColor
        shadowView.layer.shadowOffset = CGSize(width: width, height: height)
        shadowView.layer.shadowOpacity = 0.35
        shadowView.layer.shadowPath = UIBezierPath(roundedRect: shadowView.bounds, cornerRadius: 14.0).cgPath
    }
}

