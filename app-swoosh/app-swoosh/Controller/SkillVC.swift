//
//  SkillVC.swift
//  app-swoosh
//
//  Created by Sophie Berger on 08.08.18.
//  Copyright © 2018 SophieMBerger. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    
    //! = ensuring that player will not be nil
    //declaring a player variable to pass data to this VC
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(player.desiredLeague!)
        
        // Do any additional setup after loading the view.
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
