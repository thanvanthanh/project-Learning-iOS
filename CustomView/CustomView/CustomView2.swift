//
//  CustomView2.swift
//  CustomView
//
//  Created by Taof on 3/26/21.
//

import UIKit

class CustomView2: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)

        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOpacity = 0.6
        self.layer.shadowOffset = CGSize(width: 0, height: 5)
        self.layer.shadowRadius = 10
    }
    
    convenience init(color: UIColor, radius: CGFloat){
        self.init()
        
        self.backgroundColor = color
        self.layer.cornerRadius = radius
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
