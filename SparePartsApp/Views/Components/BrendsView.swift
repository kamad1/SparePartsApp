//
//  BrendsView.swift
//  SparePartsApp
//
//  Created by Jedi on 26.05.2024.
//

import SwiftUI

struct BrendsView: View {
    @Binding var selectedModel: BrandsModel
    var mockDatas: [BrandsModel]
    @State private var showList = false
    
    var body: some View {
        
        VStack {
            HStack {
                Text("\(selectedModel.name)")
                    .foregroundStyle(.black)
                    .onTapGesture {
                        showList.toggle()
                }
            }
//            .frame(width: 200, height: 200)
            .frame(maxWidth: .infinity)
            .frame(maxHeight: .infinity)
            .background(.gray)
            .overlay(alignment: .bottom) {
                if showList {
                    List(mockDatas) { model in
                        Text("\(model.name)")
                            .onTapGesture {
                                selectedModel = model
                                showList.toggle()
                            }
//
                    }
                    .listStyle(.plain)
                    .frame(height: 200)
                    
                    .offset(x: 0, y: 200)
                }
            }

        }
        .frame(maxWidth: .infinity)
        .frame(maxHeight: .infinity)
//        .background(Color.red)
        .padding()
        
    }
}

//#Preview {
//    BrendsView(selectedModel: $selectedModel, mockDatas: [mockDatas])
//}
