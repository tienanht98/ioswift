//
//  ViewController.swift
//  finalsplash
//
//  Created by Trần Tiến Anh on 9/6/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class splash: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: 4, target: self, selector: #selector(dismissSplashController), userInfo: nil, repeats: false)
        // Do any additional setup after loading the view, typically from a nib.
    }
    @objc func dismissSplashController()  {
        performSegue(withIdentifier: "segue", sender: self)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

