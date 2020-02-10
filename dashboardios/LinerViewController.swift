//
//  LinerViewController.swift
//  Created by Maryamalmoqbali on 2/5/20.
//  Copyright © 2020 Maryamalmoqbali. All rights reserved.
//
import UIKit
import LinearProgressView
class LinerViewController: UIViewController {

    @IBOutlet weak var ProductionProgress: LinearProgressView!
    var Production = 0
    var NPT = 0
    @IBOutlet weak var lblNPT: UILabel!
    @IBOutlet weak var lblProduction: UILabel!
    @IBOutlet var NPTProgress: LinearProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Production = 10
        NPT = 5
        lblProduction.text = String(Production)
        lblNPT.text = String(NPT)
       
        ProductionProgress.setProgress(Float(Production), animated: true)
        
        NPTProgress.setProgress(Float(NPT), animated: true)
        
        
        // Do any additional setup after loading the view.
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
