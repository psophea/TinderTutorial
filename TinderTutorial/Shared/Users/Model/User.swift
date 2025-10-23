//
//  User.swift
//  TinderTutorial
//
//  Created by Sophea Pov on 21/10/25.
//

import Foundation

struct User: Identifiable, Hashable {
    let id: String
    let fullname: String
    var age: Int
    var profileImageURLs: [String]
}
