//
//  CollectionViewFlowLayoutCards.swift
//  HomeWork_3
//
//  Created by Славон Еремин on 17.12.2023.
//

import UIKit

class CollectionViewFlowLayoutCards: UICollectionViewFlowLayout {
    override func prepare() {
        super.prepare()
        itemSize = CGSize(width: 190, height: 140)
    }
}
