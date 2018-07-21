//
//  ViewController.swift
//  demo_tableview_free_01
//
//  Created by Trần Tiến Anh on 7/20/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource{
    let animals: [String] = ["Horse", "Cow", "Camel", "Sheep", "Goat","Cat","Dog","Fish"]
    
   

    @IBOutlet weak var myTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "section"+String(section)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL")
        cell?.textLabel?.text = self.animals[indexPath.row]
        cell?.detailTextLabel?.text = "Dong" + String(indexPath.row)
        return cell!
    }
    


}

