//
//  ViewController.swift
//  passdatapush
//
//  Created by Trần Tiến Anh on 8/30/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func click(_ sender: Any) {
        let myVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! ViewController2
        myVC.txtstring = txtfiel.text!
        navigationController?.pushViewController(myVC, animated: true)
    }
    @IBOutlet weak var txtfiel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

