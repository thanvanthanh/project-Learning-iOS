//
//  ViewController.swift
//  TapColor
//
//  Created by Thanh on 3/18/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myUIView: UIView!
    
    let listColor : [UIColor] = [.red , .blue , .brown , .cyan , .darkGray , .green , .magenta , .opaqueSeparator , .orange , .purple , .red , .quaternarySystemFill]
    
    var oldColor : UIColor? = UIColor.black
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myUIView.backgroundColor = UIColor.black
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapView))
        myUIView.addGestureRecognizer(tapGesture)
        myUIView.isUserInteractionEnabled = true
        
    }
@objc func tapView() {
    print("sf")
    var randomColor : UIColor? = UIColor.black
    repeat{
        randomColor = listColor.randomElement()
    }while randomColor == UIColor.black
    myUIView.backgroundColor = oldColor
    oldColor = randomColor ?? UIColor.black
}

}

