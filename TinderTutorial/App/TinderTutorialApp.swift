//
//  TinderTutorialApp.swift
//  TinderTutorial
//
//  Created by Sophea Pov on 20/10/25.
//

import SwiftUI

@main
struct TinderTutorialApp: App {
    @StateObject var matchManager = MatchManager()
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(matchManager)
        }
    }
}
