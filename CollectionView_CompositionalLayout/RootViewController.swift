//
//  ViewController.swift
//  CollectionView_CompositionalLayout
//
//  Created by VA on 23/02/22.
//

import UIKit

enum Section {
    case `default`
}

class RootViewController: UIViewController {
    
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: .createListLayout())
    var dataSource: UICollectionViewDiffableDataSource<Section, String>!
    let data: [String] = (0..<10).map { _ in String.randomSentence() }
    
    override func loadView() {
        super.loadView()
        configureCollectionView()
    }
    
    private func configureCollectionView() {
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createDataSource()
        applyInitialSnapShot()
    }
    
    func createDataSource() {
        
        let cellRegistration = UICollectionView.CellRegistration<ReusableCell<CustomView>, String> { cell, indexPath, model in
            cell.view.label.text = model
        }
        
        dataSource = UICollectionViewDiffableDataSource<Section, String>(collectionView: collectionView,
                                                                         cellProvider: cellRegistration.cellProvider)
    }
    
    func applyInitialSnapShot() {
        var snapShot = NSDiffableDataSourceSnapshot<Section, String>()
        snapShot.appendSections([.default])
        snapShot.appendItems(data)
        dataSource.apply(snapShot, animatingDifferences: false)
    }
}

