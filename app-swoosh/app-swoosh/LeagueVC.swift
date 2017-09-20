//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by mateusz on 19.09.2017.
//  Copyright © 2017 mateusz. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func onNextTapped(_ sender: Any) {
            performSegue(withIdentifier: "skillVCSegue", sender: self) // Connection to the next Controller.
        
    }
}
