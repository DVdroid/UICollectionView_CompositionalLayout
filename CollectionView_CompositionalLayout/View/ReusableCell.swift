//
//  ReusableCell.swift
//  CollectionView_CompositionalLayout
//
//  Created by VA on 23/02/22.
//

import UIKit

class ReusableCell<View: UIView>: CollectionViewCell {
    
    var view: View!
    
    override func initialize() {
        super.initialize()
        
        let view = View()
        view.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(view)
        self.view = view
        
        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            view.topAnchor.constraint(equalTo: contentView.topAnchor),
            view.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            view.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}
