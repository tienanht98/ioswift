//
//  ViewController.swift
//  demoUIimage
//
//  Created by Trần Tiến Anh on 7/27/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var img: UIImageView!
    @IBAction func anhlocal(_ sender: Any) {
        img.image = UIImage(named: "banh")
    }
    var data = Data()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func viewimg(_ sender: Any) {
        let url = URL(string: "https://i.pinimg.com/736x/41/00/7b/41007b6f5967b91d300128cf7bac7284.jpg")!
        do {
            data =  try NSData(contentsOf: url) as Data
            img.image = UIImage(data: data)
        }
        catch  {
            print("lỗi down hình")
        }
    }
}

