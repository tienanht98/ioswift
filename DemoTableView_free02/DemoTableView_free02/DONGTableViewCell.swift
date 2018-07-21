//
//  DONGTableViewCell.swift
//  DemoTableView_free02
//
//  Created by Trần Tiến Anh on 7/20/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class DONGTableViewCell: UITableViewCell {

    @IBOutlet weak var imgHInh: UIImageView!
    @IBOutlet weak var mylable1: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
