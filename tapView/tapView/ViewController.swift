//
//  ViewController.swift
//  tapView
//
//  Created by Thanh on 3/17/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myUIView: UIView!
    
    var listColor : [UIColor] = [.red , .blue , .orange , .green , .gray , .purple , .white , .brown , .darkGray , .yellow ]
    var m = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myUIView.backgroundColor = UIColor.black
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapUI))
        myUIView.addGestureRecognizer(tap)
        myUIView.isUserInteractionEnabled = true
    }
    
    @objc func tapUI(){
        print("tap")
        
        var random = 0
        
        repeat{ random = Int.random(in: 0..<listColor.count)
        }while random == m
            
        myUIView.backgroundColor = listColor[random]
        m = random

        
    }
}


