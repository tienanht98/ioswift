//
//  File.swift
//  demotableview(them,sua,xoa)
//
//  Created by Trần Tiến Anh on 7/27/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import Foundation
class food {
    var Imgname : String?
    var FoodName : String?
    var Rating : Int?
    var FoodDiscription:String?
    convenience init(Imgname : String, FoodName : String,Rating : Int,FoodDiscription:String) {
        self.init()
        self.Imgname=Imgname
        self.FoodName=FoodName
        self.Rating=Rating
        self.FoodDiscription=FoodDiscription
    }
}
