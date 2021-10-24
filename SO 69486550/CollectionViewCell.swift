//
//  CollectionViewCell.swift
//  SO 69486550
//
//  Created by Aaron on 10/24/21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
  @IBOutlet private weak var label: UILabel!

  func setup(with cars: Cars) {
    label.text = cars.carName
  }
}
