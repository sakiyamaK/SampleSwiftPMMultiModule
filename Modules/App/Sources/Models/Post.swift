//
//  Post.swift
//  
//
//  Created by sakiyamaK on 2022/11/27.
//

import Foundation

public struct Post {
    public var id: Int
    public var text: String
    public var user: User
    public var imageUrlStr: String?
}

public extension Post {
    static func test(user: User) -> Post {
        .init(id: 1, text: "hogehoge", user: user)
    }
    
    static var tests: [Post] {
        Array(repeating: .test(user: .test), count: 100)
    }
}
