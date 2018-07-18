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
    @IBOutlet weak var constraintHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        var offset = ScrV.contentOffset.y/150
        print("\(VIewAnimation.frame.origin.y)")
        print(offset)
        if offset > 1 {
            offset = 1
            UIView.animate(withDuration: 1)
            {
                self.constraintHeight.constant = 60
            }
        }
        else {
            UIView.animate(withDuration: 1)
            {
                self.constraintHeight.constant = 0
            }
        }
    }
    
    
}

