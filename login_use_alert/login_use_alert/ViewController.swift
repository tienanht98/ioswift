//
//  ViewController.swift
//  login_use_alert
//
//  Created by Trần Tiến Anh on 8/23/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func btLogin(_ sender: Any) {
        let alert = UIAlertController(title: "Đăng Nhập", message: "", preferredStyle: .alert)
        
        alert.addTextField { (textField1:UITextField) in
            textField1.placeholder = "User Name"
            textField1.keyboardAppearance = .dark
            textField1.textAlignment = .center
        }
        alert.addTextField { (textField2:UITextField) in
            textField2.placeholder = "Password"
            textField2.isSecureTextEntry = true
            textField2.keyboardAppearance = .dark
            textField2.textAlignment = .center
            textField2.layer.cornerRadius = 15
        }
        let okAction = UIAlertAction(title: "ok", style: .default, handler: ({ (ACTION) in
            let username = alert.textFields![0]
            let password = alert.textFields![1]
            print("USERNAME: \(username.text!)\nPASSWORD: \(password.text!)")
            
        }))
        alert.addAction(okAction)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancelAction)

        self.present(alert, animated: true, completion: nil)
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

