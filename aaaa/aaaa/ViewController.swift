//
//  ViewController.swift
//  aaaa
//
//  Created by Trần Tiến Anh on 8/29/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var data = UserDefaults.standard
    @IBOutlet weak var txt: UITextField!
    
    @IBAction func show(_ sender: Any) {
        data.set(txt.text, forKey: "name")
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

