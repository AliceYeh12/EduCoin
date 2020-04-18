//
//  ViewController.swift
//  EduCoin
//
//  Created by Alice Yeh on 4/17/20.
//  Copyright © 2020 Alice Yeh. All rights reserved.
//

import UIKit
import FirebaseUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginPressed(_ sender: UIButton) {
        // Get default auth UI object
        let authUI = FUIAuth.defaultAuthUI()
        
        guard authUI != nil else {
            // Catch error
            return
        }
        
        // Set self as delegate
        authUI?.delegate = self
        authUI?.providers = [FUIEmailAuth()]
        
        // Get reference to auth UI view controller
        let authViewController = authUI!.authViewController()
        
        // Present it
        present(authViewController, animated: true, completion: nil)
    }
    
}

extension ViewController: FUIAuthDelegate {
    
    func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?) {
        // Check for error
        guard error == nil else {
            // Catch error
            return
        }
        
        // Get user's uid -> authDataResult?.user.uid
        
        performSegue(withIdentifier: "logIn", sender: self)
    }
}

