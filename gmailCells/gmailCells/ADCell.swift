//
//  ADCell.swift
//  gmailCells
//
//  Created by Trần Tiến Anh on 7/23/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class ADCell: UITableViewCell {
    @IBOutlet weak var IMG: UIImageView!
    @IBOutlet weak var LBTitle: UILabel!
    @IBOutlet weak var LBTotal: UILabel!
    @IBOutlet weak var LBContent: UILabel!
    var istap: Bool = false
    func tap(istap:Bool)  {
        if istap==false {
            LBTitle.font = Font.FontBold(size: 17)
        }
        else {
            LBTitle.font = Font.Font(size: 17)
        }
    }
}
