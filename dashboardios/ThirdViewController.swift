//
//  ThirdViewController.swift
//  dashboardios
//
//  Created by Maryamalmoqbali on 2/5/20.
//  Copyright © 2020 Maryamalmoqbali. All rights reserved.
//

import UIKit
import Charts
class ThirdViewController: UIViewController {
    var valueColors = [UIColor]()
       var numbers = [1,-2,3,-4,5,-6,7,-8,9,-10]
    @IBOutlet weak var chartline: LineChartView!
    override func viewDidLoad() {
        super.viewDidLoad()
updategraph()
        // Do any additional setup after loading the view.
    }
    

       func updategraph(){
        var lineChartEntry = [ChartDataEntry]()
            
            for i in 0..<numbers.count{

           
                let value = ChartDataEntry(x: Double(i), y: Double(numbers[i]))
                lineChartEntry.append(value)
                valueColors.append(colorPicker(value: Double(numbers[i])))
            
                
                
            }
            let line1 = LineChartDataSet(entries:lineChartEntry, label: "Number")
            line1.colors = [NSUIColor.orange]
       
        // line1.circleHoleColor = NSUIColor.red
            let data = LineChartData()
            data.addDataSet(line1)

            chartline.data = data
            
    //        chartline.chartDescription?.text = "My awesome chart”
        }
        func colorPicker(value : Double) -> UIColor {

        //input your own logic for how you actually want to color the x axis
           
            if (value == 1 ){
                
                return UIColor.red
            }
            else {
                return UIColor.black
            }
        }

    }


