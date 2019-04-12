//
//  UIColorExtensions.swift
//  MarketSmithCH
//
//  Created by 刘方 on 2018/3/12.
//  Copyright © 2018年 刘方. All rights reserved.
//

import UIKit

class UIColorExtensions: UIColor {
//    func ColorWithRGBHex(hex:NSInteger) -> UIColor {
//        let r:NSInteger = (hex >> 16) & 0xFF
//        let g:NSInteger = (hex >> 8) & 0xFF
//        let b:NSInteger = (hex) & 0xFF
//        return UIColor.init(red: CGFloat(Float(r)/255.0), green: CGFloat(Float(g)/255.0), blue: CGFloat(Float(b)/255.0), alpha: 1.0)
//    }
//    func ColorWithAlphaRGBColor(hex:NSInteger) -> UIColor {
//        let a:NSInteger = (hex >> 24) & 0xFF;
//        let r:NSInteger = (hex >> 16) & 0xFF;
//        let g:NSInteger = (hex >> 8) & 0xFF;
//        let b:NSInteger = (hex) & 0xFF;
//        return UIColor.init(red: CGFloat(Float(r)/255.0), green: CGFloat(Float(g)/255.0), blue: CGFloat(Float(b)/255.0), alpha: CGFloat(Float(a)/255.0))
//    }
}

extension UIColor{
    /// get a color for hex for example 0xffffff
    func ColorWithRGBHex(hex:NSInteger) -> UIColor {
        let r:NSInteger = (hex >> 16) & 0xFF
        let g:NSInteger = (hex >> 8) & 0xFF
        let b:NSInteger = (hex) & 0xFF
        return UIColor.init(red: CGFloat(Float(r)/255.0), green: CGFloat(Float(g)/255.0), blue: CGFloat(Float(b)/255.0), alpha: 1.0)
    }
    ///get a color wiht alpha for hex for example 0xffffffff
    func ColorWithAlphaRGBColor(hex:NSInteger) -> UIColor {
        let a:NSInteger = (hex >> 24) & 0xFF;
        let r:NSInteger = (hex >> 16) & 0xFF;
        let g:NSInteger = (hex >> 8) & 0xFF;
        let b:NSInteger = (hex) & 0xFF;
        return UIColor.init(red: CGFloat(Float(r)/255.0), green: CGFloat(Float(g)/255.0), blue: CGFloat(Float(b)/255.0), alpha: CGFloat(Float(a)/255.0))
    }
}

