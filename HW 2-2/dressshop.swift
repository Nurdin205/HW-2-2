//
//  dressshop.swift
//  HW 2-2
//
//  Created by cpu on 26/12/22.
//

import Foundation

class DressShop: Shop{
    var brend: String
    var tovar: [Tovar] = [Tovar]()
     init(brend: String,  name: String, sqaere: String, adress: String, time: String) {
         self.brend = brend
        super.init(name: name, sqaere: sqaere, adress: adress, time: time)
       
        
    }
    override func showInfo() {
        print("название магазина - \(name), площадь магазина \(sqaere)м.кв , адрес магаина \(adress), время работы \(time)")
        for i in tovar{
            print("название товара - \(i.name), цена товар - \(i.price), количество на складе - \(i.amount)")
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
