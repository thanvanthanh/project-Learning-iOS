//
//  CustomView.swift
//  Calculator
//
//  Created by Thân Văn Thanh on 3/30/21.
//

import UIKit

class CustomView: UIView {
    
    let itemButton : UIButton = {
        let button = UIButton ()
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    
    override init(frame: CGRect) {
            super.init(frame: frame)
        }
        
        
        convenience init(image: UIImage) {
            self.init()
           // itemButton.backgroundColor = color
            itemButton.setImage(UIImage(named: "0"), for: .normal)

        }
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
