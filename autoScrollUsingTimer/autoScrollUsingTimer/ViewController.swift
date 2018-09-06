//
//  ViewController.swift
//  autoScrollUsingTimer
//
//  Created by Trần Tiến Anh on 9/5/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate ,UICollectionViewDataSource {
    @IBOutlet weak var collectionview: UICollectionView!
    let data:[String] = ["image1","image2","image3","image4","image5"]
    var i = 0
    var scrolltimer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CELL", for: indexPath) as! CustomCollectionViewCell
        cell.image.image = UIImage(named: data[indexPath.row])
        var rowindex = indexPath.row
        let numberofrecords = data.count-1
        if rowindex < numberofrecords {
            rowindex = rowindex+1
        }
        else {
            rowindex = 0
        }
//        scrolltimer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(ViewController.startTimer), userInfo: rowindex, repeats: true)
        return cell
    }
    @objc func startTimer(thistime : Timer)
    {
        UIView.animate(withDuration: 1.0) {
            self.collectionview.scrollToItem(at: IndexPath(row: thistime.userInfo as! Int, section: 0), at:.centeredHorizontally, animated: false)
        }
    }

    @objc func scrollToNextCell(){
        i = i+1
        //get Collection View Instance
        
        //get cell size
        let cellSize = CGSize(width: 375, height: 50)
        
        //get current content Offset of the Collection view
        let contentOffset = collectionview.contentOffset
        
        //scroll to next cell
//        collectionView.scrollRectToVisible(CGRectMake(contentOffset.x + cellSize.width, contentOffset.y, cellSize.width, cellSize.height), animated: true);
        collectionview.scrollRectToVisible(CGRect(x: contentOffset.x + cellSize.width, y: contentOffset.y, width: cellSize.width, height: cellSize.height), animated: true)
        if  i == data.count{
            collectionview.scrollRectToVisible(CGRect(x: 0  ,y: 0, width: cellSize.width, height: cellSize.height), animated: true)
            i = 0
        }
        
    }
    
    /**
     Invokes Timer to start Automatic Animation with repeat enabled
     */
    func startTimer() {
        
        _ = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(scrollToNextCell), userInfo: nil, repeats: true);
        
        
    }
}

