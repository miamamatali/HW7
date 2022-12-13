//
//  main.swift
//  HW7
//
//  Created by Indira on 13/12/22.
//

import Foundation

print("Hello, World!")

var generalProduct = [[String?]]()

var product1 = [String?]()
    product1 = ["milk", "welove", "2345", "150"]
var product2 = [String?]()
    product2 = ["shopper", "marcjacobs", "66737", "5000"]
var product3 = [String?]()
    product3 = ["tree", "miahome", "1235", "nil"]
var product4 = [String?]()
    product4 = ["iphone", "apple", "nil", "8700"]
var product5 = [String?]()
    product5 = ["watches", "samsung", "5647", "6000"]

generalProduct.append(product1)
generalProduct.append(product2)
generalProduct.append(product3)
generalProduct.append(product4)
generalProduct.append(product5)

var totalCount: Int = 0
print("Good and quantity")
for (_, item) in generalProduct.enumerated(){
    for (i, element) in item.enumerated(){
        if i == 0{
            print("Good: \(element!)", terminator: " ")
        }else if i == 6{
            let count: String = element ?? "0"
            print("quantity: \(count)")
            totalCount += Int(count) ?? 0
        }
    }
}
print("General quantity of goods: \(totalCount)")

totalCount = 0
for (_, item) in generalProduct.enumerated(){
    var count: Int = 0
    for (i, element) in item.enumerated(){
        
        if i == 4{
            let str: String = element ?? "0"
            count = Int(str) ?? 0
        }else if i == 5{
            let str: String = element ?? "o"
            let disc = Int(str) ?? 0
            count -= count * disc / 100
        }
    }
    totalCount += count
}
print("general cost: \(totalCount)")
