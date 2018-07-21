//
//  sltyle1TableViewCell.swift
//  demoMultiStyleCells
//
//  Created by Trần Tiến Anh on 7/20/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class sltyle1TableViewCell: UITableViewCell {
    @IBOutlet weak var lableInStyle1: UILabel!
    @IBOutlet weak var img2VIewInStyle1: UIImageView!
    
    @IBOutlet weak var imgviewInStyle1: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
