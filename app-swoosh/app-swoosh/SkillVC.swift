//
//  SkillVC.swift
//  app-swoosh
//
//  Created by mateusz on 19.09.2017.
//  Copyright © 2017 mateusz. All rights reserved.
//

import UIKit


class SkillVC: UIViewController {
    var player: Player!
    var desiredSkill = ""
    
    
    
    @IBOutlet weak var finishBtn: BorderButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(player.desiredLeague)
        // Do any additional setup after loading the view.
        player = Player()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func beginnerPressed(_ sender: Any) {
        selectSkill(skillType: "beginner")
        
    }
    @IBAction func ballerPressed(_ sender: Any) {
        selectSkill(skillType: "baller")
    }
    
    func selectSkill(skillType: String) {
        player.desiredSkill = skillType
        finishBtn.isEnabled = true
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
