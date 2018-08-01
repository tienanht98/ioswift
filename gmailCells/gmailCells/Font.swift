//
//  Font.swift
//  gmailCells
//
//  Created by Trần Tiến Anh on 7/27/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit
class Font {
    static func FontBold(size:CGFloat) -> UIFont {
       return UIFont.boldSystemFont(ofSize: size)
    }
    static func Font(size:CGFloat) -> UIFont {
       return UIFont.systemFont(ofSize: size)
    }
    
}
