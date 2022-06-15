//
//  Bai1ViewController.swift
//  AutoLayout
//
//  Created by Taof on 3/23/21.
//

import UIKit

class Bai1ViewController: UIViewController {
    let topView: UIView = {
      let view=UIView()
        view.translatesAutoresizingMaskIntoConstraints=false
        view.backgroundColor=UIColor.red
        return view
    }()
    let bottomView: UIView = {
      let view=UIView()
        view.translatesAutoresizingMaskIntoConstraints=false
        view.backgroundColor=UIColor.white
        return view
    }()
    
    let imgView: UIImageView={
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        // gan anh
//        imageView.frame.size=20
        imageView.image = UIImage(named: "yte")
//        imageView.image = UIImage(systemName: "tv.fill", withConfiguration: .none)
//        imageView.tintColor = .red
        // che do hien thi anh
        imageView.contentMode = .scaleAspectFit
//        imageView.backgroundColor = .white
        return imageView
    }()
    let imgView1: UIImageView={
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        // gan anh
//        imageView.frame.size=20
        imageView.image = UIImage(named: "yte")
//        imageView.image = UIImage(systemName: "tv.fill", withConfiguration: .none)
//        imageView.tintColor = .red
        // che do hien thi anh
        imageView.contentMode = .scaleAspectFit
//        imageView.backgroundColor = .white
        return imageView
    }()
    
    let covidLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "COVID-19" // gia tri cua label
        label.textColor = UIColor.green // mau chu
        label.textAlignment = .center // can giua cho text
//        label.font = UIFont.systemFont(ofSize: 40) // font chu
//        label.backgroundColor = UIColor.yellow
        return label
    }()
    let covidLabel1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "COVID-19" // gia tri cua label
        label.textColor = UIColor.green // mau chu
        label.textAlignment = .center // can giua cho text
//        label.font = UIFont.systemFont(ofSize: 40) // font chu
//        label.backgroundColor = UIColor.yellow
        return label
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=UIColor(displayP3Red: 0.88, green: 0.95, blue: 0.99, alpha: 1)
        // Do any additional setup after loading the view.
        setUpLayout()
        
    }
    
    func setUpLayout(){
        view.addSubview(topView)
        view.addSubview(bottomView)
        topView.addSubview(imgView)
        bottomView.addSubview(imgView1)
        topView.addSubview(covidLabel)
        bottomView.addSubview(covidLabel1)
        
        
        
        topView.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor, constant: 0).isActive=true
        topView.centerYAnchor.constraint(equalTo: view.layoutMarginsGuide.centerYAnchor, constant: -100).isActive=true
        topView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor,multiplier: 0.5, constant: 0).isActive=true
        topView.heightAnchor.constraint(equalToConstant: 50).isActive=true
        
        bottomView.topAnchor.constraint(equalTo: topView.layoutMarginsGuide.bottomAnchor, constant: 30).isActive=true
        bottomView.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor, constant: 0).isActive=true
        bottomView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor,multiplier: 0.5, constant: 0).isActive=true
        bottomView.heightAnchor.constraint(equalToConstant: 50).isActive=true
        
        imgView.trailingAnchor.constraint(equalTo: topView.layoutMarginsGuide.trailingAnchor, constant: 0).isActive=true
        imgView.topAnchor.constraint(equalTo: topView.layoutMarginsGuide.topAnchor, constant: 0).isActive=true
        imgView.bottomAnchor.constraint(equalTo: topView.layoutMarginsGuide.bottomAnchor, constant: 0).isActive=true
        
        imgView1.trailingAnchor.constraint(equalTo: bottomView.layoutMarginsGuide.trailingAnchor, constant: 0).isActive=true
        imgView1.topAnchor.constraint(equalTo: bottomView.layoutMarginsGuide.topAnchor, constant: 0).isActive=true
        imgView1.bottomAnchor.constraint(equalTo: bottomView.layoutMarginsGuide.bottomAnchor, constant: 0).isActive=true
        
        covidLabel.centerXAnchor.constraint(equalTo: topView.layoutMarginsGuide.centerXAnchor, constant: 20).isActive=true
        covidLabel.topAnchor.constraint(equalTo: topView.layoutMarginsGuide.topAnchor, constant: 5).isActive=true
        
        covidLabel1.centerXAnchor.constraint(equalTo: bottomView.layoutMarginsGuide.centerXAnchor, constant: 20).isActive=true
        covidLabel1.topAnchor.constraint(equalTo: bottomView.layoutMarginsGuide.topAnchor, constant: 5).isActive=true
        
        
        
        
    }
    

}
