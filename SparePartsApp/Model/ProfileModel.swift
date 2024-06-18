//
//  ProfileModel.swift
//  SparePartsApp
//
//  Created by Jedi on 18.06.2024.
//

import Foundation

class ProfileModel: Identifiable {
    var id = UUID().uuidString
    var name: String
    var surname: String
    var fullName: String {name + " " + surname }
    var phoneNumber: Int
    var eMAil: String
    var address: String
    var myOrders: Int
    var image: String
    
    init(name: String, surname: String, phoneNumber: Int, eMAil: String, address: String, myOrders: Int,image: String) {
        self.name = name
        self.surname = surname
        self.phoneNumber = phoneNumber
        self.eMAil = eMAil
        self.address = address
        self.myOrders = myOrders
        self.image = image
    }
    
}
