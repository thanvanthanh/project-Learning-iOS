//
//  ViewController.swift
//  ScrollView
//
//  Created by Thân Văn Thanh on 4/7/21.
//

import UIKit

class ViewController: UIViewController {
    
    let myScrollView : UIScrollView = {
        let sc = UIScrollView ()
        sc.translatesAutoresizingMaskIntoConstraints = false
        sc.backgroundColor = .blue
        
        return sc
    }()
    let viewScroll : UIView = {
        let v = UIView ()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .red
        return v
    }()
    let myLabel : UILabel = {
    let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "hello anh em"
        lb.textColor = .black
        lb.font = UIFont.systemFont(ofSize: 30)
        
        
        return lb
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        myScrollView.showsVerticalScrollIndicator = true
    setupLayout()
    }
    func setupLayout (){
        self.view.addSubview(myScrollView)
        myScrollView.addSubview(viewScroll)
        viewScroll.addSubview(myLabel)
        
        
        
        
        myScrollView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 0).isActive = true
        //myScrollView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: 0).isActive = true
        myScrollView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: 0).isActive = true
        myScrollView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 0).isActive = true
        myScrollView.heightAnchor.constraint(equalToConstant: 1000).isActive = true
        
        viewScroll.centerXAnchor.constraint(equalTo: myScrollView.centerXAnchor, constant: 0).isActive = true
        viewScroll.centerYAnchor.constraint(equalTo: myScrollView.centerYAnchor, constant: 0).isActive = true
        viewScroll.widthAnchor.constraint(equalTo: myScrollView.widthAnchor, multiplier: 1).isActive = true
        viewScroll.heightAnchor.constraint(equalTo: myScrollView.heightAnchor, multiplier: 1).isActive = true
        
        myLabel.topAnchor.constraint(equalTo: viewScroll.topAnchor, constant: 800).isActive = true
        myLabel.leadingAnchor.constraint(equalTo: viewScroll.leadingAnchor, constant: 20).isActive = true
        myLabel.bottomAnchor.constraint(equalTo: viewScroll.bottomAnchor, constant: -50).isActive = true
        myLabel.trailingAnchor.constraint(equalTo: viewScroll.trailingAnchor, constant: 20).isActive = true
    }

}

