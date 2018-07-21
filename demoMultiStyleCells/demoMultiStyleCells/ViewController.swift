//
//  ViewController.swift
//  demoMultiStyleCells
//
//  Created by Trần Tiến Anh on 7/20/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var mytableview : UITableView!
    var mangInStyle1:[String] = ["image1","image2","image3","image4","image5","image6"]
    override func viewDidLoad() {
        super.viewDidLoad()
        mytableview.delegate = self
        mytableview.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mangInStyle1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2==0
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as! sltyle1TableViewCell
            cell.imgviewInStyle1.image = UIImage(named: mangInStyle1[indexPath.row] )
            cell.img2VIewInStyle1.image = UIImage(named: mangInStyle1[indexPath.row] )
            cell.lableInStyle1.text = mangInStyle1[indexPath.row]
            return cell
        }
       else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! stylecell2TableViewCell
            cell.ImgInStyle2.image = UIImage(named: mangInStyle1[indexPath.row] )
            cell.lableInStyle2.text = mangInStyle1[indexPath.row]
            return cell
        }
        
    }
    


}

