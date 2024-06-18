//
//  GroupView.swift
//  SparePartsApp
//
//  Created by Jedi on 26.05.2024.
//

import SwiftUI

struct GroupView: View {
    @Binding var selectedModel: GroupModel
    var mockDatas: [GroupModel]
    @State private var showList = false
    
    var body: some View {
        
        VStack {
            HStack {
                Text("\(selectedModel.name)")
                    .onTapGesture {
                        showList.toggle()
                }
            }
            .frame(maxWidth: .infinity)
            .frame(maxHeight: .infinity)
            .background(.gray)
            .overlay(alignment: .bottom) {
                if showList {
                    List(mockDatas) { group in
                        Text("\(group.name)")
                            .onTapGesture {
                                selectedModel = group
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
        .padding()
    }
}
