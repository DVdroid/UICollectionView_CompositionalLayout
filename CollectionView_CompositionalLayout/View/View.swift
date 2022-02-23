//
//  View.swift
//  CollectionView_CompositionalLayout
//
//  Created by VA on 23/02/22.
//

import UIKit

class View: UIView {
    
    @available(*, unavailable)
    override init(frame: CGRect) {
        super.init(frame: .zero)
        initialize()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("required init?(coder: NSCoder) not implemented...")
    }
 
    func initialize() {
    }
}
