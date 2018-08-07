//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Sophie Berger on 07.08.18.
//  Copyright © 2018 SophieMBerger. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    //using function form apple
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
