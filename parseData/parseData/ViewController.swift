//
//  ViewController.swift
//  parseData
//
//  Created by Trần Tiến Anh on 8/24/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfiel: UITextField!
    @IBAction func enter(_ sender: Any) {
        if textfiel.text != "" {
        performSegue(withIdentifier: "segue", sender: self)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let second = segue.destination as! screen2ViewController
        second.mystring = textfiel.text!
    }
    @IBAction  func unwindtoViewcontroller(unwindSegue:UIStoryboardSegue)
    {
    }


}

