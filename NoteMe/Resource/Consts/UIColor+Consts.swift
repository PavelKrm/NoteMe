//
//  UIColor+Consts.swift
//  NoteMe
//
//  Created by PavelKrm on 24.10.23.
//

import UIKit

extension UIColor {
    
    private convenience init(_ r: UInt8,
                             _ g: UInt8,
                             _ b: UInt8,
                             _ a: CGFloat) {
        self.init(red: CGFloat(r) / 255.0,
                  green: CGFloat(g) / 255.0,
                  blue: CGFloat(b) / 255.0,
                  alpha: a)
    }
    
    static var appYellow: UIColor = .init(255, 232, 26, 1)
    static var appBlack: UIColor = .init(40, 40, 40, 1)
    static var appGray: UIColor = .init(242, 242, 242, 1)
    static var appDarkGray: UIColor = .init(217, 217, 217, 1)
    static var appRed: UIColor = .init(241, 63, 63, 1)
    static var appText: UIColor = .init(0, 0, 0, 1)
    static var appDarkGrayText: UIColor = .init(70, 70, 70, 1)
    static var appGrayText: UIColor = .init(170, 170, 170, 1)
    static var appShadow: UIColor = .init(0, 0, 0, 0.05)
    static var appLightGrayText: UIColor = .init(151, 151, 151, 1)
    static var appSuperLightGrayText: UIColor = .init(137, 138, 141, 1)    
}
