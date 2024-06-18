//
//  ProfileView.swift
//  SparePartsApp
//
//  Created by Jedi on 26.05.2024.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
   
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person")
                    .frame(maxWidth: 100, maxHeight: 100)
                    .background(.gray)
                    .clipShape(Circle())
                    .contextMenu(menuItems: {
                        Button("Delete") {
                            
                        }
                        Button("Edite") {
                            
                        }
                    })
                Spacer()
                VStack{
                    Text(viewModel.profile.fullName)
                    Text(viewModel.profile.address)
                    
                    
                }
                
                
                
            }
            .padding()
            
            List {
                Text(viewModel.profile.name)
                
            }
        }
    }
}

#Preview {
    ProfileView()
}
