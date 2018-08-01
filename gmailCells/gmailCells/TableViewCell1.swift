//
//  TableViewCell1.swift
//  gmailCells
//
//  Created by Trần Tiến Anh on 7/23/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class TableViewCell1: UITableViewCell {
    @IBOutlet weak var LBTitle:UILabel!
    @IBOutlet weak var ImgIcon: UIImageView!
    @IBOutlet weak var LBToppic: UILabel!
    var istap: Bool = false
    var bRec:Bool = false
    @IBOutlet weak var BTLIke_OL: UIButton!
    @IBAction func BTLike(_ sender: Any) {
        bRec = !bRec
        if (bRec == true) {
         BTLIke_OL.setImage(UIImage(named: "star-like"), for:.normal )
            
        } else {
             BTLIke_OL.setImage(UIImage(named: "star"), for:.normal )
        
        }
    }
    @IBOutlet weak var LBContent: UILabel!

}
