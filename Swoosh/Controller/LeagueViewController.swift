//
//  LeagueViewController.swift
//  Swoosh
//
//  Created by Žan Fras on 17/03/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit

class LeagueViewController: UIViewController {
    
    var player: Player!

    @IBOutlet weak var nextButton: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func mensButtonPressed(_ sender: BorderButton) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func womenButtonPressed(_ sender: BorderButton) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func coedButtonPressed(_ sender: BorderButton) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextButton.isEnabled = true
    }
    
    
    @IBAction func nextButtonPressed(_ sender: BorderButton) {
        
        performSegue(withIdentifier: "goToSkill", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillViewController {
            skillVC.player = player
        }
    }
    
}
