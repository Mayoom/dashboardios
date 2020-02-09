//
//  firstViewController.swift
//  dashboardios
//
//  Created by Maryamalmoqbali on 2/5/20.
//  Copyright © 2020 Maryamalmoqbali. All rights reserved.
//

import UIKit
import SwiftCharts
class firstViewController: UIViewController {
      var chartview : BarsChart!
    var arrayPoint1 :[(String,Double)] = []
    var arrayPoint2 :[(String,Double)] = []
    var arrayPoint :[(String,Double)] = [
      ("1",50),
      ("2",100),
      ("3",250),
      ("4",300),
      ("5",350),
      ("6",400),
      ("7",450),
      ("8",500),
      ("9",550),
      ("10",600),
      ("11",650),
      ("12",700),
      ("13",750),
      ("14",800),
      ("15",850),
      ("16",900),
      ("17",1000),
      ("18",1200),
      ("19",1250),
      ("20",1300),
      ("21",1400),
      ("22",1500),
      ("23",1550),
      ("24",1600)]

    override func viewDidLoad() {
        super.viewDidLoad()

        
        view.layer.cornerRadius = 20.0
               view.layer.masksToBounds = true
        
        let  chartConfig = BarsChartConfig(valsAxisConfig: ChartAxisConfig(from: 0, to: 1600, by: 200))
        let frame = CGRect(x:0, y: 20, width: 667, height: 370)
        
        for point in arrayPoint{
        
            if point.1 >= 1200{
              arrayPoint1.append(point)
                arrayPoint2.append(("",0))
            }else {
                arrayPoint1.append((point.0,0))
              arrayPoint2.append(point)
             }
        
         
        // Do any additional setup after loading the view.
    }
        


        
        if arrayPoint2[0].1 < 1200.0{
            let chart = BarsChart(frame: frame, chartConfig: chartConfig, xTitle: "Hour", yTitle: "VP", bars: arrayPoint2 , color: UIColor.red, barWidth: 15)
            self.view.addSubview(chart.view)
            self.chartview = chart
        }
        let chart = BarsChart(frame: frame, chartConfig: chartConfig, xTitle: "Hour", yTitle: "VP", bars: arrayPoint1 , color: UIColor(red: 0.001, green: 0.460, blue: 0.002, alpha: 1), barWidth: 15)
           self.view.addSubview(chart.view)
           self.chartview = chart
                  
        


      
        
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
