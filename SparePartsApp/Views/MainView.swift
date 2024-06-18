//
//  MainView.swift
//  SparePartsApp
//
//  Created by Jedi on 26.05.2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel =  MainViewModel()
    @State var selectedModel: BrandsModel = .init(name: "")
    @State var selectedGroup: GroupModel = .init(name: "")
    @State private var seachTF: String = ""
    var body: some View {
        VStack {
            HStack {
                Text("8-800-000-00-00")
                    .padding()
                    .font(.caption)
                    .onTapGesture {
                        //TODO: переход на вызов
                    }
                Image(.logo)
                    .resizable()
                    .frame(maxWidth: 120, maxHeight: 60)
                    .scaledToFit()
                Text("info@kamadi.com")
                    .padding()
                    .font(.caption)
                    .onTapGesture {
                        //TODO: пеоеход на отправку почты
                    }
            }
            TextField("Поиск", text: $seachTF)
                .padding(5)
                .frame(height: 48)
                .frame(maxWidth: .infinity)
                .border(Color.white, width: 1)
                .shadow(color: .gray, radius: 1)
            //            .background(.TFColor)
                .overlay(alignment: .trailing) {
                    Image(systemName: "magnifyingglass")
                        .offset(x: -10)
                }
                .padding(10)
            
            BrendsView(selectedModel: $selectedModel, mockDatas: viewModel.model)
            
            GroupView(selectedModel: $selectedGroup, mockDatas: viewModel.group)
        }
    }
        
}

#Preview {
    MainView()
}
