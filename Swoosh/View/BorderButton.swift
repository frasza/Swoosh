//
//  BorderButton.swift
//  Swoosh
//
//  Created by Žan Fras on 15/03/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
