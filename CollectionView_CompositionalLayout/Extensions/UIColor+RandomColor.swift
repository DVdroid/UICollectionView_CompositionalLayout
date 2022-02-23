//
//  UIColor+RandomColor.swift
//  CollectionView_CompositionalLayout
//
//  Created by VA on 23/02/22.
//

import UIKit

extension UIColor {
    static var random: UIColor {
        .init(red: .random(in: 0...1),
              green: .random(in: 0...1),
              blue: .random(in: 0...1),
              alpha: 1)
    }
}
