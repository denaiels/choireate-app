//
//  HexColorExtension.swift
//  Choireate
//
//  Created by Daniel Santoso on 05/05/21.
//

import Foundation
import UIKit

extension UIColor {
    
    static let cpBlack = UIColor().colorFromHex("030301")
    static let cpGray = UIColor().colorFromHex("5E5E5C")
    static let cpRed = UIColor().colorFromHex("FF4365")
    static let cpLightRed = UIColor().colorFromHex("FF93A8")
    static let cpDarkGreen = UIColor().colorFromHex("00917C")
    static let cpGreen = UIColor().colorFromHex("00D9C0")
    static let cpWhite = UIColor().colorFromHex("FFFFF3")
    
    func colorFromHex(_ hex: String) -> UIColor {
        var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if hexString.hasPrefix("#") {
            hexString.remove(at: hexString.startIndex)
        }
        
        if hexString.count != 6 {
            return UIColor.black
        }
        
        var rgb: UInt32 = 0
        Scanner(string: hexString).scanHexInt32(&rgb)
        
        return UIColor.init(red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
                            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
                            blue: CGFloat(rgb & 0x0000FF) / 255.0,
                            alpha: 1.0)
    }
    
}
