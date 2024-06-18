//
//  BrandsModel.swift
//  SparePartsApp
//
//  Created by Jedi on 26.05.2024.
//

import Foundation

class BrandsModel: Identifiable {
    var id = UUID().uuidString
    var name: String

    init(name: String) {

        self.name = name
    }
    
    static var mockData: [BrandsModel] = [
        .init(name: "BMW"),
        .init(name: "Mersedes"),
        .init(name: "FORD"),
        .init(name: "RENAULT")
    ]
}
