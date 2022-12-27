//
//  autoshop.swift
//  HW 2-2
//
//  Created by cpu on 26/12/22.
//

import Foundation
class AutoShop: Shop{
    var tovar: [Tovar] = [Tovar]()
    override init(name: String, sqaere: String, adress: String, time: String) {
        super.init(name: name, sqaere: sqaere, adress: adress, time: time)
    }
    override func showInfo() {
        print("название магазина - \(name), площадь магазина \(sqaere)м.кв, адрес магазина \(adress), время работы \(time)")
        for i in tovar{
            print("\(i.name), \(i.price), \(i.amount)")
        }
    }
    func tovar (add: Tovar){
        var similar = true
        for serch in tovarArray{
            if add.name == serch.name && add.amount == serch.amount && add.price == serch.price{
                similar = false
                serch.price += add.price
            }
        }
        if similar != false{
            tovar.append(add)
        }
    }
}
