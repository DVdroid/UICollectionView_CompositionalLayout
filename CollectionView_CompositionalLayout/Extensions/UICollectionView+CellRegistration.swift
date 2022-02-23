//
//  UICollectionView+CellRegistration.swift
//  CollectionView_CompositionalLayout
//
//  Created by VA on 23/02/22.
//

import Foundation
import UIKit

extension UICollectionView.CellRegistration {
    
    var cellProvider: (UICollectionView, IndexPath, Item) -> Cell {
        { collectionView, indexpath, item in
            collectionView.dequeueConfiguredReusableCell(using: self, for: indexpath, item: item)
        }
    }
}
