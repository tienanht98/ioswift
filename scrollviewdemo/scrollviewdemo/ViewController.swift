//
//  ViewController.swift
//  scrollviewdemo
//
//  Created by Trần Tiến Anh on 7/13/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var VIewAnimation: UIView!
    @IBOutlet weak var ScrV: UIScrollView!
    @IBOutlet weak var bottom: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        var offset = ScrV.contentOffset.y/150
        print(ScrV.contentOffset.y)
        if offset > 1 {
            offset = 1
            
            UIView.animate(withDuration: 1.0,
                           delay: 0.6,
                           options: [.curveEaseOut],
                           animations: {
                            self.bottom.constant = 100
            }, completion: nil)

        }
            
        else {
            UIView.animate(withDuration: 1.0,
                           delay: 0.6,
                           options: [.curveEaseOut],
                           animations: {
                            self.bottom.constant = 40
            }, completion: nil)

        
        }
    }
    
    
}

