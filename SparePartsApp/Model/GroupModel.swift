//
//  GroupModel.swift
//  SparePartsApp
//
//  Created by Jedi on 18.06.2024.
//

import Foundation

struct GroupModel: Identifiable, Hashable {
    var id = UUID().uuidString
    var name: String

    
    static var mockData: [GroupModel] = [
        .init(name: "ZIP1"),
        .init(name: "ZIP2"),
        .init(name: "ZIP3"),
        .init(name: "Zip4")
    ]
}
