//
//  ViewController.swift
//  UIAlertController
//
//  Created by Trần Tiến Anh on 8/22/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func btYes(_ sender: Any) {
         let alertController = UIAlertController(title: "ok em ", message: "quyết định cuối cùng của em là sáng suốt lắm!", preferredStyle: .alert)
        let cancel = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
        alertController.addAction(cancel)
        present(alertController, animated: true, completion: nil)

    }
    @IBAction func btNO(_ sender: Any) {
        let alertController = UIAlertController(title: "Hey em chắc chứ ?", message: "quyết định cuối cùng của em là ?", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "Để em suy nghĩ lại ", style: .default, handler: nil)
        let no  = UIAlertAction(title: "Không ", style: .default) {
            (ACTION) in
            let yousure = UIAlertController(title: "Hey em chắc chứ ?", message: "đã nói thế rồi mà còn ko hiểu à ? giờ ý em sao ", preferredStyle: .alert)
            let ok  = UIAlertAction(title: " ok a em đồng ý  ", style: .default, handler: nil)
            yousure.addAction(ok)
            self.present(yousure, animated: true, completion: nil)
        }
        alertController.addAction(defaultAction)
        alertController.addAction(no)
        
        alertController.addAction(defaultAction)
        present(alertController, animated: true, completion: nil)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

