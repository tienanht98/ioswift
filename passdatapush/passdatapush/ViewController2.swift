
//
//  ViewController2.swift
//  passdatapush
//
//  Created by Trần Tiến Anh on 8/30/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var txtview: UITextView!
    var txtstring = String()
    override func viewDidLoad() {
        super.viewDidLoad()
     txtview.text = txtstring
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
