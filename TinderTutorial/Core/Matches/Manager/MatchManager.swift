//
//  MatchManager.swift
//  TinderTutorial
//
//  Created by Sophea Pov on 23/10/25.
//

import Foundation

@MainActor
class MatchManager: ObservableObject{
    
    @Published var matchedUser: User?
    
    func checkForMatch(withUser user: User) {
        let didMatch = Bool.random()
        if didMatch{
            matchedUser = user
        }
    }
}
