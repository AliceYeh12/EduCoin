//
//  TimerController.swift
//  EduCoin
//
//  Created by Alice Yeh on 4/17/20.
//  Copyright © 2020 Alice Yeh. All rights reserved.
//

import UIKit

class TimerController: UIViewController {
    
    var educoins = 10
    var secondsRemaining = 1800
    
    var secondsTotal = 0
    
    var timer = Timer()
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var progressTimeLeft: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.run()
    }
    
    func run() {
        
        progressBar.progress = 0.0
        
        timer.invalidate()
        
        self.secondsTotal = secondsRemaining
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondsRemaining > 0 {
            secondsRemaining -= 1
            print(secondsRemaining)
            progressBar.progress = Float(secondsTotal - secondsRemaining) / Float(secondsTotal)
            
            let minutesLeft = secondsRemaining / 60
            let secondsLeft = secondsRemaining % 60
            progressTimeLeft.text = "\(minutesLeft):\(secondsLeft)"
        } else {
            progressTimeLeft.text = "Done!"
        }
    }
    
    @IBAction func finishedAlready(_ sender: UIButton) {
        secondsRemaining = 0
        
        performSegue(withIdentifier: "returnHome", sender: self)
    }
}
