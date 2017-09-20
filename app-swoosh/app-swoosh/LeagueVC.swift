//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by mateusz on 19.09.2017.
//  Copyright © 2017 mateusz. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
    var desiredLeague = ""

    @IBOutlet weak var nextBtn: BorderButton!
    
    
    
    override func viewDidLoad() {
                super.viewDidLoad()

       player = Player()
    }
    @IBAction func onNextTapped(_ sender: Any) {
            performSegue(withIdentifier: "skillVCSegue", sender: self) // Connection to the next Controller.
        
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
}
