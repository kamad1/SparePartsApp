//
//  ProductModel.swift
//  SparePartsApp
//
//  Created by Jedi on 18.06.2024.
//


import SwiftUI

class ProductModel: Identifiable {
    var id = UUID().uuidString
    var name: String = ""
    var brand: BrandsModel
    var group: GroupModel
    var description: String = "тут будет описание"
    var image = Image(systemName: "photo")
    var item: String = "Тут будет артикул"
    var balanceInStock: Int = 0
    var price: Double = 0.0
    
    init(id: String = UUID().uuidString, name: String, brand: BrandsModel, group: GroupModel, description: String, image: Image = Image(systemName: "photo"), item: String, balanceInStock: Int, price: Double) {
        self.id = id
        self.name = name
        self.brand = brand
        self.group = group
        self.description = description
        self.image = image
        self.item = item
        self.balanceInStock = balanceInStock
        self.price = price
    }
    
    
    
}
