//
//  CustomView.swift
//  CollectionView_CompositionalLayout
//
//  Created by VA on 23/02/22.
//

import UIKit

class CustomView: View {
    
    var label: UILabel!
    
    override func initialize() {
        super.initialize()
        label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0

        addSubview(label)
        backgroundColor = .random
        
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            label.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            trailingAnchor.constraint(equalTo: label.trailingAnchor, constant: 16),
            bottomAnchor.constraint(equalTo: label.bottomAnchor, constant: 16)
        ])
    }
}
