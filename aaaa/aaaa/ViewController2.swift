//
//  ViewController2.swift
//  aaaa
//
//  Created by Trần Tiến Anh on 8/29/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    var data = UserDefaults.standard
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = data.string(forKey: "name") ?? ""
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
