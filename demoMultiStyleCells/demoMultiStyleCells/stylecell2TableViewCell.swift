//
//  stylecell2TableViewCell.swift
//  demoMultiStyleCells
//
//  Created by Trần Tiến Anh on 7/20/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class stylecell2TableViewCell: UITableViewCell {

    @IBOutlet weak var lableInStyle2: UILabel!
    @IBOutlet weak var ImgInStyle2: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
