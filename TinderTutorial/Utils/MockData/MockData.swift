//
//  MockData.swift
//  TinderTutorial
//
//  Created by Sophea Pov on 21/10/25.
//

import Foundation

struct MockData {
    static let users: [User] = [
        .init(
            id: NSUUID().uuidString,
            fullname: "Megan Fox",
            age: 37,
            profileImageURLs: ["megan-fox-1", "megan-fox-2"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "David Beckham",
            age: 58,
            profileImageURLs: ["david-beckham-1", "david-beckham-2"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Conor Mcregor",
            age: 49,
            profileImageURLs: ["conor-mcgregor-1", "conor-mcgregor-2", "conor-mcgregor-3"]
        ),
    ]
}
