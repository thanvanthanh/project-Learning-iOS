//
//  ViewController.swift
//  AutoLayout
//
//  Created by Thanh on 3/19/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    
    let redView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myView.backgroundColor = UIColor.blue
        myView.frame = CGRect(x: 228, y: 726, width: 200, height: 200)
        
        //lấy kích thước màn hình
        let screenWidth = self.view.frame.width
        let screenHeight = self.view.frame.height
        
        print(screenWidth , screenHeight)
        
        

//        UIView.animate(withDuration: 1) {
//            self.myView.frame = CGRect(x: screenWidth - self.myView.frame.width, y: screenHeight - self.myView.frame.height, width: self.myView.bounds.width, height: self.myView.bounds.height)
//        }
        
        UIView.animate(withDuration: 1) {
            self.myView.frame = CGRect(x: screenWidth - self.myView.frame.width, y: screenHeight - self.myView.frame.height, width: self.myView.bounds.width, height: self.myView.bounds.height)
        }

        // thêm redView vào supper View
        self.view.addSubview(redView)

        redView.backgroundColor = UIColor.red
        redView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        // đưa đối tượng màu đỏ ra giữa màn hình
        redView.center = view.center
//        redView.center = CGPoint(x: 100, y: 100)

        //bo tron
        redView.layer.cornerRadius = 50

//        myView.center = view.center
        view.bringSubviewToFront(myView) // mang 1 đối tượng lên trên cùng
        
    }


}

