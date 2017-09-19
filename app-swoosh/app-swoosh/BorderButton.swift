//
//  BorderButton.swift
//  app-swoosh
//
//  Created by mateusz on 19.09.2017.
//  Copyright © 2017 mateusz. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
