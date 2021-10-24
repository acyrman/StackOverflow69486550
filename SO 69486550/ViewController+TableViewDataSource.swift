//
//  ViewController+TableViewDataSource.swift
//  SO 69486550
//
//  Created by Aaron on 10/24/21.
//

import UIKit

extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    guard let selectedCar = selectedCar else { return 0 }
    return selectedCar.carModel.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard
      let selectedCar = selectedCar,
      let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
    else { return UITableViewCell() }
    let carModel = selectedCar.carModel[indexPath.row]
    cell.setup(with: carModel)
    return cell
  }
}
