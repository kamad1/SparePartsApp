//
//  ContentView.swift
//  SparePartsApp
//
//  Created by Jedi on 26.05.2024.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        TabView {
            NavigationView { MainView() }
                .tabItem { Label("Главная", systemImage: "homekit") }

            NavigationView { SearchView() }
                .tabItem { Label("Поиск", systemImage: "magnifyingglass") }
            
            NavigationView { ProfileView() }
                .tabItem { Label("Профиль", systemImage: "person") }
            
            NavigationView { CartView() }
                .tabItem { Label("Корзина", systemImage: "cart") }
            
            NavigationView { InfoCompanyView() }
                .tabItem { Label("О нас", systemImage: "info.bubble") }
        }
    }
}

#Preview {
    StartView()
}
