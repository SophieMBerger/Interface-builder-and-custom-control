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
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    
    func selectLeague (leagueType: String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    @IBAction func unwindFromSkillVC(unwindSegueSkill: UIStoryboardSegue){
        
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
