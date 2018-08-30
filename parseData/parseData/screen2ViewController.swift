//
//  screen2ViewController.swift
//  parseData
//
//  Created by Trần Tiến Anh on 8/24/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class screen2ViewController: UIViewController {
    var mystring = String()
    @IBOutlet weak var textview: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        textview.text = mystring 
        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
