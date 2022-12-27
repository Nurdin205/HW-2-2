//
//  shop.swift
//  HW 2-2
//
//  Created by cpu on 26/12/22.
//Создать класс Магазин
//Свойства: Название, Площадь, Расположение, Часы работы, массив с товарами


import Foundation

class Shop{
    var name: String
    var sqaere: String
    var adress: String
    var time: String
    var tovarArray: [Tovar] = [Tovar]()
 
    init(name: String, sqaere: String, adress: String, time: String) {
        self.name = name
        self.sqaere = sqaere
        self.adress = adress
        self.time = time
    }
    func showInfo(){
        print("название магазина - \(name), площадь магазина - \(sqaere)м.кв, адрес магазина - \(adress), время работы -\(time),")
        for i in tovarArray{
            print("название товара - \(i.name), количестов на складе - \(i.amount), цена товара - \(i.price)")
        }
}
    func add (add: Tovar){
        var similar = true
        for serch in tovarArray{
            if add.name == serch.name && add.amount == serch.amount && add.price == serch.price{
                similar = false
                serch.price += add.price
                
                
            }
        }
        if similar != false{
            tovarArray.append(add)
        }
    }
}

