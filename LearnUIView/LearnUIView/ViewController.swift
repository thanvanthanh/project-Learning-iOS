//
//  ViewController.swift
//  LearnUIView
//
//  Created by Thanh on 3/16/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var hiLabel: UILabel!
    
    @IBOutlet weak var myButton: UIButton!
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.yellow
   
        //hiLabel
        hiLabel.backgroundColor = UIColor.white
        hiLabel.text = "Xin Chào các bạn"
        hiLabel.textColor = UIColor.red
        hiLabel.textAlignment = .right
        hiLabel.font = UIFont.italicSystemFont(ofSize: 17)
        
        //myButton
        myButton.backgroundColor = UIColor.brown
        myButton.setTitle("Press", for: .normal)
        myButton.setTitleColor(UIColor.white, for: .normal)
        myButton.layer.borderWidth = 2 // cỡ viền
        myButton.layer.borderColor = UIColor.cyan.cgColor // màu viền
        
        myButton.layer.cornerRadius = myButton.bounds.height/2 //bo tròn
        
        //photoImageView
        photoImageView.image = UIImage (named: "code")
        photoImageView.backgroundColor = UIColor.purple
        photoImageView.contentMode = .scaleAspectFit
        //them action cho ImageView
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapImage))
        photoImageView.addGestureRecognizer(tapGesture)
        photoImageView.isUserInteractionEnabled = true
    }
    
    @IBAction func onPress(_ sender: Any) {
        print("tapped")
    }
    
    @objc func tapImage(){
        print("tap photo")
    }
}

