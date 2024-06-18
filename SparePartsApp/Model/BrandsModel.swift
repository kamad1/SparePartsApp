//
//  BrandsModel.swift
//  SparePartsApp
//
//  Created by Jedi on 26.05.2024.
//

import Foundation

struct BrandsModel: Identifiable, Hashable {
    var id = UUID().uuidString
    var name: String

    
    static var mockData: [BrandsModel] = [
        .init(name: "BMW"),
        .init(name: "Mersedes"),
        .init(name: "FORD"),
        .init(name: "RENAULT")
    ]
}
