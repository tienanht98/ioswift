//
//  ViewController.swift
//  UIscrollVIewAutoLayout
//
//  Created by Trần Tiến Anh on 7/13/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollview: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        time()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func nextCell() {
        let cellSize = CGSize(width: self.view.frame.width, height: self.view.frame.height)
        let contentOffset = scrollview.contentOffset
        scrollview.scrollRectToVisible(CGRect(x: cellSize.width + contentOffset.x, y: contentOffset.y, width: cellSize.width, height: cellSize.height), animated: true)
        if scrollview.scrollsToTop {
            scrollview.scroll
        }
    }
    
    func time() {
        Timer.scheduledTimer(timeInterval: 1, target: self, selector:#selector(nextCell), userInfo: nil, repeats: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

