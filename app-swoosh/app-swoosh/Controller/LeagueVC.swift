//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Sophie Berger on 08.08.18.
//  Copyright © 2018 SophieMBerger. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    //declaring a structure
    //force unwrapping as do not want code to run without a player
    //A odel that can store data and pass it to the VC
    var player: Player!
    
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //initializing a struct
        player = Player()
    }
    
    //Programmatically loading a Segue
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }

    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
        nextBtn.isHidden = false
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
        nextBtn.isHidden = false
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
        nextBtn.isHidden = false
    }
    
    
    func selectLeague (leagueType: String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    @IBAction func unwindFromSkillVC(unwindSegueSkill: UIStoryboardSegue){
        nextBtn.isHidden = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //tries to assign segu.destination to skillVC variable
        // as? checks if destination (viewController) can be dowcast/equal a SkillVC
        //as SkillVC inherits from viewController class, this should work
        //Checks if segue.destination in main.storyboard is the SkillVC
        if let skillVC = segue.destination as? SkillVC{
            
            //passing data forom LeagueVC player variable to skillVC player variable
            skillVC.player = player
        }
    }

}
