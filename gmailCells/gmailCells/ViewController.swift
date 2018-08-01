//
//  ViewController.swift
//  gmailCells
//
//  Created by Trần Tiến Anh on 7/23/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var tableview: UITableView!
    var Title:[String] = ["Facebook","Google","Youtube","Quora","Coursera","Google","Youtube","Quora","Coursera","Google","Facebook","Google","Youtube","Quora","Coursera","Google","Youtube","Quora","Facebook","Google","Youtube","Quora","Coursera","Google","Youtube","Quora","Facebook","Google","Youtube"]
    var Data:[String] = ["Facebook,Linkedln,Quorasdafsd","Miduum Daily Digest,Udemy","Facebook,Linkedln,Quorasdafsd","Miduum Daily Digest,Udemy","Facebook,Linkedln,Quorasdafsd","Miduum Daily Digest,Udemy","Facebook,Linkedln,Quorasdafsd","Miduum Daily Digest,Udemy","Facebook,Linkedln,Quorasdafsd","Miduum Daily Digest,Udemy","Facebook,Linkedln,Quorasdafsd","Miduum Daily Digest,Udemy","Facebook,Linkedln,Quorasdafsd","Miduum Daily Digest,Udemy","Facebook,Linkedln,Quorasdafsd","Facebook,Linkedln,Quorasdafsd","Miduum Daily Digest,Udemy","Facebook,Linkedln,Quorasdafsd","Miduum Daily Digest,Udemy","Facebook,Linkedln,Quorasdafsd","Miduum Daily Digest,Udemy","Facebook,Linkedln,Quorasdafsd","Miduum Daily Digest,Udemy","Facebook,Linkedln,Quorasdafsd","Miduum Daily Digest,Udemy","Facebook,Linkedln,Quorasdafsd","Miduum Daily Digest,Udemy","Facebook,Linkedln,Quorasdafsd","Miduum Daily Digest,Udemy"]
    var SoLuong = 80
    var state = [Bool]()
    func fillDataArr() {
        for _ in 0...Title.count {
           state.append(false)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        tableview.delegate = self
        fillDataArr()
    }
    
    // MARK: - Table view data source
   

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Title.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let total = SoLuong + indexPath.row
        if (indexPath.row % 2==0) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CELL1") as! TableViewCell1
            cell.LBTitle.text = Title[indexPath.row]
            if state[indexPath.row] == true {
                cell.LBTitle.font = Font.Font(size: 17)
                cell.LBToppic.font = Font.Font(size: 17)
            }
            else {
                cell.LBTitle.font = Font.FontBold(size: 17)
                cell.LBToppic.font = Font.FontBold(size: 17)
            }
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CELL2") as! ADCell
            cell.LBTitle.text = Title[indexPath.row]
            cell.LBContent.text = Data[indexPath.row]
            if total >= 99 {
             cell.LBTotal.backgroundColor = Color.rgba(red: 13, green: 159, blue: 94)
                cell.LBTotal.text = "99+ mới"
                if state[indexPath.row] == true {
                    cell.LBTitle.font = Font.Font(size: 17)
                    
                }
                else {
                    cell.LBTitle.font = Font.FontBold(size: 17)
                }
    
                return cell
            }
            else {
                cell.LBTotal.backgroundColor = Color.rgba(red: 94, green: 143, blue: 235)

                cell.LBTotal.text = String(total) + " mới"
                print(String(total))
                if state[indexPath.row] == true {
                    cell.LBTitle.font = Font.Font(size: 17)
                }
                else {
                    cell.LBTitle.font = Font.FontBold(size: 17)
                }
            }
            return cell
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        state[indexPath.row]=true
        tableView.reloadRows(at: [indexPath], with:UITableViewRowAnimation.none )
   }
}
    
    




