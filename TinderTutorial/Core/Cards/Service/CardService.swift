//
//  CardService.swift
//  TinderTutorial
//
//  Created by Sophea Pov on 21/10/25.
//

import Foundation

struct CardService{
    func fetchCardModels() async throws -> [CardModel]{
        let users = MockData.users
        return users.map({ CardModel(user: $0) })
    }
}
