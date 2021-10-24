//
//  Cars.swift
//  SO 69486550
//
//  Created by Aaron on 10/24/21.
//

struct Cars {
  let carName:String
  let carModel:[String]

  static func generateData() -> [Cars] {
    [
      Cars(carName: "Mercedes", carModel: ["S Class","A Class", "B Class"]),
      Cars(carName: "BMW", carModel: ["X5","X6","X7"]),
      Cars(carName: "Ford", carModel: ["Fuison","Focus","Mustang"]),
      Cars(carName: "Toyota", carModel: ["Camry", "Corolla"]),
      Cars(carName: "Hyundai", carModel: ["Elantra"])
    ]
  }
}
