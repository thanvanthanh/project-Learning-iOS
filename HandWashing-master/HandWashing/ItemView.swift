//
//  ItemView.swift
//  HandWashing
//
//  Created by Taof on 5/6/20.
//  Copyright © 2020 taoquynh. All rights reserved.
//

import UIKit

class ItemView: UIView {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
         Drawing code
    }
    */
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        textView.isEditable = false
    }
    
}
