//
//  TimerTypeController.swift
//  EduCoin
//
//  Created by Alice Yeh on 4/17/20.
//  Copyright © 2020 Alice Yeh. All rights reserved.
//

import UIKit

class TimerTypeController: UIViewController {
    
    var educoins = 10
    let times = ["Quick Task": 1800, "Long Assignment": 5400, "Study": 3600]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func timerTapped(_ sender: UIButton) {
        let timer = TimerController()
        let timerType = sender.currentTitle!
        
        timer.secondsRemaining = Int(times[timerType]!)
        timer.educoins = educoins
        
        performSegue(withIdentifier: "getTimer", sender: self)
    }
}
