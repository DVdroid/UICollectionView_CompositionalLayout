//
//  CollectionViewCell.swift
//  CollectionView_CompositionalLayout
//
//  Created by VA on 23/02/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @available(*, unavailable)
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("required init?(coder: NSCoder) not implemented...")
    }
    
    func initialize() {
    }
}
