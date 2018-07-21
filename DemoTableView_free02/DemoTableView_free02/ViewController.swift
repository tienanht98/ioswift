//
//  ViewController.swift
//  DemoTableView_free02
//
//  Created by Trần Tiến Anh on 7/20/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet weak var Mytable: UITableView!
    var mang:[String] = ["AA","BB","CC","dd"]
    var arrimg:[String] = ["image1","image2","image3","image4","image5","image6"]
    override func viewDidLoad() {
        super.viewDidLoad()
            Mytable.dataSource = self
            Mytable.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrimg.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL") as! DONGTableViewCell
        cell.imgHInh.image = UIImage(named: arrimg[indexPath.row])
        cell.mylable1.text = arrimg[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    

}

