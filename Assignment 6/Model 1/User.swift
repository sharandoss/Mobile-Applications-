//
//  User.swift
//  ResponsiveUI (iOS)
//
//  Created by Sharan Mohanadoss on 3/11/22.
//


import SwiftUI

// MARK: User Model and Sample Data
struct User: Identifiable{
    var id = UUID().uuidString
    var name: String
    var image: String
    var title: String
}

var users: [User] = [

    User(name: "John", image: "User1",title: "Fundraising For Ukraine"),
    User(name: "Josh", image: "User2",title: "Mobile App Development Idea"),
    User(name: "Sharan", image: "User3",title: "Trip to Kashmir"),
    User(name: "Dad", image: "User4",title: "No More Allowance "),
]
