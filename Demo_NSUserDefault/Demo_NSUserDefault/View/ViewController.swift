//
//  ViewController.swift
//  Demo_NSUserDefault
//
//  Created by Trần Tiến Anh on 8/29/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var defaul:UserDefaults!
    @IBOutlet weak var txt: UITextField!
    @IBAction func show(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        defaul = UserDefaults()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        defaul.set(txt.text, forKey: "data")
        
    }


}

