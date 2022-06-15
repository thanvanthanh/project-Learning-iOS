//
//  ViewController.swift
//  CustomView
//
//  Created by Taof on 3/26/21.
//

import UIKit

class ViewController: UIViewController {

    let topView: CustomView2 = {
        let view = CustomView2(color: UIColor.purple, radius: 30)
        
        return view
    }()
    
    let bottomView: CustomView2 = {
        let view = CustomView2(color: UIColor.orange, radius: 50)
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(topView)
        topView.frame = CGRect(x: 50, y: 80, width: 60, height: 60)
        topView.center = view.center
        topView.center.y = 100
        
        view.addSubview(bottomView)
        bottomView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        bottomView.center = view.center
        bottomView.center.y = view.bounds.height - 100
    }


}

