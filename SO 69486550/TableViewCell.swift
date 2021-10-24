//
//  TableViewCell.swift
//  SO 69486550
//
//  Created by Aaron on 10/24/21.
//

import UIKit

class TableViewCell: UITableViewCell {
  func setup(with carModel: String) {
    self.textLabel?.text = carModel
  }
}
