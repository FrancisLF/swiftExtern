//
//  UIFontExtensions_lf.swift
//  MarketSmithCH
//
//  Created by 刘方 on 2018/7/17.
//  Copyright © 2018年 刘方. All rights reserved.
//

import UIKit

class UIFontExtensions_lf: NSObject {

}

//加粗程度：浅 正常 中等 黑体
public enum LFBoldFontType{
    case light
    case regular
    case medium
    case bold
}

//字体类型：中文、字母、数字
public enum LFFontType{
    case number
    case chinese
    case english
}

extension UIFont{
    //分配不同字体类型的正常字体
    func  regularFont(type:LFFontType,size:CGFloat) -> UIFont{
        switch type {
        case .number:
            return UIFont(name: "HelveticaNeue", size: size)!
        case .chinese:
            if #available(iOS 9.0, *){
                return UIFont(name: "PingFangSC-Regular", size: size)!
            }else{
                return UIFont(name: "STHeiti", size: size)!
            }
        case .english:
            return UIFont(name: "Helvetica", size: size)!
        }
    }
    //分配不同字体类型、不同加粗程度的字体
    func font(boldType:LFBoldFontType,fontType:LFFontType,size:CGFloat) -> UIFont {
        switch fontType {
        case .number:
            switch boldType{
            case .light:
                return UIFont(name: "HelveticaNeue-Light", size: size)!
            case .regular:
                return UIFont(name: "HelveticaNeue", size: size)!
            case .medium:
                return UIFont(name: "HelveticaNeue-Medium", size: size)!
            case .bold:
                return UIFont(name: "HelveticaNeue-Bold", size: size)!
            }
        case .english:
            switch boldType{
            case .light:
                return UIFont(name: "Helvetica-Light", size: size)!
            case .regular:
                return UIFont(name: "Helvetica", size: size)!
            case .medium:
                return UIFont(name: "Helvetica-Medium", size: size)!
            case .bold:
                return UIFont(name: "Helvetica-Bold", size: size)!
            }
        case .chinese:
            switch boldType{
            case .light:
                if #available(iOS 9.0, *){
                    return UIFont(name: "PingFangSC-Light", size: size)!
                }else{
                    return UIFont(name: "STHeiti-Light", size: size)!
                }

            case .regular:
                if #available(iOS 9.0, *){
                    return UIFont(name: "PingFangSC-Regular", size: size)!
                }else{
                    return UIFont(name: "STHeiti", size: size)!
                }
            case .medium:
                if #available(iOS 9.0, *){
                    return UIFont(name: "PingFangSC-Medium", size: size)!
                }else{
                    return UIFont(name: "STHeiti-Medium", size: size)!
                }
            case .bold:
                if #available(iOS 9.0, *){
                    return UIFont(name: "PingFangSC-Semibold", size: size)!
                }else{
                    return UIFont(name: "STHeiti-Bold", size: size)!
                }
            }
        }
    }
}
