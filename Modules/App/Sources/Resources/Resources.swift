//
//  File.swift
//  
//
//  Created by sakiyamaK on 2022/11/28.
//

import UIKit

public struct Resources {
    public struct Image { }
}

public extension Resources.Image {
    static var onepiece: UIImage {
        UIImage(named: "onepiece", in: Bundle.module, compatibleWith: nil)!
    }
    static var onepieceUsopp: UIImage {
        UIImage(named: "onepiece04_usopp_sogeking", in: Bundle.module, compatibleWith: nil)!
    }
    
}
