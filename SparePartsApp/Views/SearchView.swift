//
//  SearchView.swift
//  SparePartsApp
//
//  Created by Jedi on 26.05.2024.
//

import SwiftUI

struct SearchView: View {
    @StateObject var viewModel = SearchViewModel()
    @State private var seachTF: String = ""
    
    var body: some View {
        VStack {
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
            VStack(alignment: .leading ) {
                ForEach(viewModel.all, id: \.self) { all in
                    Text(all.name)
                    
                }
            }
            Spacer()
        }
    }
}

#Preview {
    SearchView()
}
