//
//  CurrentUserProfileView.swift
//  TinderTutorial
//
//  Created by Sophea Pov on 22/10/25.
//

import SwiftUI

struct CurrentUserProfileView: View {
    @State private var showEditProfile = false
    
    let user: User
    
    var body: some View {
        NavigationStack{
            List{
                // header view
                CurrentUserProfileHeaderView(user: user)
                    .onTapGesture {
                        showEditProfile.toggle()
                    }
                
                // account info
                Section("Account Information"){
                    HStack{
                        Text("Name")
                        
                        Spacer()
                        
                        Text(user.fullname)
                    }
                    
                    HStack{
                        Text("Email")
                        
                        Spacer()
                        
                        Text("test@gmail.com")
                    }
                }
                
                // legal
                Section("Legal"){
                    Text("Terms of Service")
                }
                
                // logout/delete
                Section{
                    Button("Logout"){
                        print("DEBUG: Logout here..")
                    }
                    .foregroundStyle(.red)
                }
                
                Section{
                    Button("Delete Account"){
                        print("DEBUG: Logout here..")
                    }
                    .foregroundStyle(.red)
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .fullScreenCover(isPresented: $showEditProfile) {
                EditProfileView(user: user)
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: MockData.users[2])
}
