//
//  tovar.swift
//  HW 2-2
//
//  Created by cpu on 26/12/22.
//

import Foundation

class Tovar{
    var name: String
    var amount: Int
    var price: Int
    init(name: String, amount: Int, price: Int) {
        self.name = name
        self.amount = amount
        self.price = price
    }
    func showInfo(){
        print("\(name), \(amount), \(price)")
    }
}
