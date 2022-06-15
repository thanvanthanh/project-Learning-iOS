//
//  CustomView1.swift
//  CustomView
//
//  Created by Taof on 3/26/21.
//

import UIKit

class CustomView1: UIView {

    @IBOutlet weak var myView: UIView!
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    convenience init(color: UIColor) {
        self.init()
        self.backgroundColor = color
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        self.layer.cornerRadius = 10
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.8
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 10
    }
   

}
