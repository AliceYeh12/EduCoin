//
//  HomepageViewController.swift
//  EduCoin
//
//  Created by Alice Yeh on 4/17/20.
//  Copyright © 2020 Alice Yeh. All rights reserved.
//

import UIKit

class HomepageViewController: UIViewController {
    
    @IBOutlet weak var educoinsCollected: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startWorkingPressed(_ sender: UIButton) {
        let timerType = TimerTypeController()
        timerType.educoins = Int(educoinsCollected.text!)!
        
        performSegue(withIdentifier: "startWorking", sender: self)
    }
    
    @IBAction func studentStorePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "visitStore", sender: self)
    }
    
}
