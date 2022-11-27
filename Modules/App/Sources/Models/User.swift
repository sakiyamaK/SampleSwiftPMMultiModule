//
//  User.swift
//  
//
//  Created by sakiyamaK on 2022/11/27.
//

import Foundation

public struct User {
    public var id: Int
    public var name: String
    public var imageUrlStr: String?
}

public extension User {
    static var test: User {
        .init(id: 10, name: "hoge")
    }
}
