//
//  ViewController+CollectionViewStuff.swift
//  SO 69486550
//
//  Created by Aaron on 10/24/21.
//

import UIKit

extension ViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    cars.count
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    // If not able to deque cell then return empty cell
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell else { return UICollectionViewCell() }
    cell.setup(with: cars[indexPath.row])
    return cell
  }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    // Make nice square cells
    let cellWidth = collectionView.bounds.width - 80
    return CGSize(width: cellWidth, height: cellWidth)
  }

  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    guard let vc = storyboard?.instantiateViewController(identifier: "TableViewController") as? UITableViewController else { return }
    // Save current selected cell in collection view
    selectedCar = cars[indexPath.row]
    vc.tableView.dataSource = self
    navigationController?.pushViewController(vc, animated: true)
  }
}
