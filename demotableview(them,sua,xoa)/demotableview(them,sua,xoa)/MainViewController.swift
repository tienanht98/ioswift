//
//  MainViewController.swift
//  demotableview(them,sua,xoa)
//
//  Created by Trần Tiến Anh on 7/25/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class MainViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableview: UITableView!
    
    var NameFood:[String]=["Chân gà " ,"Tôm" ,"Ngao","Bánh"]
    var Img:[String]=["changa","banh","ngao","tom"]
    override func viewDidLoad() {
        super.viewDidLoad()
     tableview.delegate = self
     tableview.dataSource = self
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
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NameFood.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL") as! CustomCell
        cell.img.image = UIImage(named: Img[indexPath.row])
        cell.LBFoodName.text = NameFood[indexPath.row]
        return cell
    }
    

}
