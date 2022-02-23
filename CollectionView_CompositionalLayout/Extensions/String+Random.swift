//
//  String+Random.swift
//  CollectionView_CompositionalLayout
//
//  Created by VA on 23/02/22.
//

import Foundation

extension String {
    
    static func randomWord() -> String {
        (0..<Int.random(in: 1...10)).map { _ in String(format: "%c", Int.random(in: 97..<123)) }.joined(separator: "")
    }
    
    static func randomSentence() -> String {
        (0...50).map { _ in randomWord() }.joined(separator: " ")
    }
}
