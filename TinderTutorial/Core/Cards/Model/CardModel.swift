//
//  CardModel.swift
//  TinderTutorial
//
//  Created by Sophea Pov on 21/10/25.
//

import Foundation

struct CardModel {
    let user: User
}

extension CardModel: Identifiable, Hashable {
    var id: String { return user.id }
}
