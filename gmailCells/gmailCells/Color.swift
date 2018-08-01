//
//  Color.swift
//  gmailCells
//
//  Created by Trần Tiến Anh on 7/27/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class Color {
    static func rgba(red: UInt, green: UInt, blue: UInt) -> UIColor {
        return UIColor(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1)
    }
    
}
