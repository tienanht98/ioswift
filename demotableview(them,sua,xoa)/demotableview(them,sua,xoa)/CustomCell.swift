//
//  CustomCell.swift
//  demotableview(them,sua,xoa)
//
//  Created by Trần Tiến Anh on 7/25/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var LBFoodName: UILabel!
    @IBOutlet weak var LBrate: UILabel!
    
    @IBOutlet weak var LBFoodDiscription: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
