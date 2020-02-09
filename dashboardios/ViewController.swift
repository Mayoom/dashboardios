//
//  ViewController.swift
//  dashboardios
//
//  Created by Maryamalmoqbali on 2/5/20.
//  Copyright © 2020 Maryamalmoqbali. All rights reserved.
//

import UIKit
import SwiftCharts
class ViewController: UIViewController  ,UIScrollViewDelegate{

    @IBOutlet weak var seg_dataCategory: UISegmentedControl!
   
   

    override func viewDidLoad() {
        super.viewDidLoad()

        
        //let nav = self.navigationController?.navigationBar
               // nav?.barStyle = UIBarStyle.black
        //          nav?.tintColor = UIColor.white
        let button = UIButton(type: .custom)
            button.setImage(UIImage (named: "Leader Board_main_ic"), for: .normal)
        button.frame = CGRect(x: 0.0, y: 0.0, width: 35.0, height: 35.0)
        let barButtonItem = UIBarButtonItem(customView: button)
        let button2 = UIButton(type: .custom)
            button2.setImage(UIImage (named: "profile"), for: .normal)
            button2.frame = CGRect(x: 0.0, y: 0.0, width: 35.0, height: 35.0)
        let barButtonItem2 = UIBarButtonItem(customView: button2)
        let button3 = UIButton(type: .custom)
            button3.setImage(UIImage (named: "refresh"), for: .normal)
            button3.frame = CGRect(x: 0.0, y: 0.0, width: 20.0, height: 20.0)
        let barButtonItem3 = UIBarButtonItem(customView: button3)
        let button4 = UIButton(type: .custom)
              //  button4.setTitle(<#T##title: String?##String?#>, for: <#T##UIControl.State#>)
            button4.setTitle("Link to Share",for: .normal)
            button4.setImage(UIImage (named: "Link"), for: .normal)
            button4.backgroundColor = UIColor.white
            button4.setTitleColor(.black, for: .normal)
        //                            button4.setImage(UIImage (named: "refresh"), for: .normal)
            button4.frame = CGRect(x: 0.0, y: 0.0, width: 35.0, height: 35.0)
        let barButtonItem4 = UIBarButtonItem(customView: button4)
        //        let button5 = UIButton(type: .custom)
        //            button5.setImage(UIImage (named: "Link"), for: .normal)
        //            button5.frame = CGRect(x: 0.0, y: 0.0, width: 20.0, height: 20.0)
        //        let barButtonItem5 = UIBarButtonItem(customView: button5)
        self.navigationItem.rightBarButtonItems = [barButtonItem2,barButtonItem3,barButtonItem4]

        self.navigationItem.leftBarButtonItems = [barButtonItem]

        
        
      
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

