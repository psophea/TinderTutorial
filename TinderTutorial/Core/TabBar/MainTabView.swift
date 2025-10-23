//
//  MainTabBar.swift
//  TinderTutorial
//
//  Created by Sophea Pov on 20/10/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            CardStackView()
                .tabItem{ Image(systemName: "flame") }
                .tag(0)
            
            Text("Search View")
                .tabItem{ Image(systemName: "magnifyingglass") }
                .tag(1)
            
            Text("Inbox View")
                .tabItem{
                    Image(.messagesIcon)
                        .renderingMode(.template)
                }
                .tag(2)
            
            CurrentUserProfileView(user: MockData.users[2])
                .tabItem{ Image(systemName: "person") }
                .tag(3)
        }
        .tint(.primary)
    }
}

#Preview {
    MainTabView()
}
