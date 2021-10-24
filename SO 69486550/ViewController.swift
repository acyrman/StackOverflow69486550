//
//  ViewController.swift
//  SO 69486550
//
//  Created by Aaron on 10/23/21.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var collectionView: UICollectionView!

  let cars: [Cars] = Cars.generateData()
  var selectedCar: Cars?

  override func viewDidLoad() {
    super.viewDidLoad()

    configureCollectionView()
  }

  private func configureCollectionView() {
    collectionView.dataSource = self
    collectionView.delegate = self
  }
}
