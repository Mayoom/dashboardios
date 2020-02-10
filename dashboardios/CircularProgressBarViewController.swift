//
//  CircularProgressBarViewController.swift
//  Created by Maryamalmoqbali on 2/5/20.
//  Copyright © 2020 Maryamalmoqbali. All rights reserved.
//

import UIKit
import MBCircularProgressBar
class CircularProgressBarViewController: UIViewController {
    var Proudection = 0
    var NPT = 0
    @IBOutlet weak var ProudectionBrogressBar: MBCircularProgressBarView!
    
    @IBOutlet weak var NPTProgressView: MBCircularProgressBarView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // set the corner radius
        view.layer.cornerRadius = 20.0
        view.layer.masksToBounds = true
       
        Proudection = 80
        NPT = 8
        UIView.animate(withDuration:5.0){
            self.ProudectionBrogressBar.value = CGFloat(self.Proudection)
            
              self.NPTProgressView.value = CGFloat(self.NPT)
        // Do any additional setup after loading the view.
    }
        
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
