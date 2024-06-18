//
//  ProfileViewModel.swift
//  SparePartsApp
//
//  Created by Jedi on 18.06.2024.
//

import Foundation

import Foundation

class ProfileViewModel: ObservableObject {
    @Published var profile: ProfileModel = .init(name: "Dmitriy", surname: "Ovechkin", phoneNumber: 9997777722, eMAil: "adsff@dsfs.ru", address: "Moscow", myOrders: 0, image: "")
    
    init() {
        self.profile = profile
        getData()
    }
    
    func getData() {
        
    }
}
