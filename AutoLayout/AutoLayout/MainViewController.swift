//
//  MainViewController.swift
//  AutoLayout
//
//  Created by Thanh on 3/23/21.
//

import UIKit

class MainViewController: UIViewController {

    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.purple
        
        return view
    }()
    
    let photoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        // gán ảnh
        imageView.image = UIImage(named: "yte")
        //chế độ hiển thị ảnh
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .white
        
        return imageView
    
    }()
    
    let covidLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.green // màu background
        label.text = "Thanh" // gia tri cua label
        label.textAlignment = .center  // căn giữa cho text
        label.font = UIFont.systemFont(ofSize: 40) //font chữ
        label.textColor = UIColor.red // màu chữ
        return label
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.white
        setupLayout()
        
    }
    
    //view đã xuất hiện
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        photoImageView.layer.cornerRadius = photoImageView.bounds.height/2
        photoImageView.clipsToBounds = true
    }
    
    
    func setupLayout(){
    // addSubview
        view.addSubview(containerView)
        containerView.addSubview(photoImageView)
        containerView.addSubview(covidLabel)
        //thêm constraint
//        containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
//        containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
//        containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
//        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        // so với SafeArea
        let margin = view.layoutMarginsGuide
        containerView.topAnchor.constraint(equalTo: margin.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: margin.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: margin.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: margin.bottomAnchor, constant: 0).isActive = true
        
        // cách viết khác
        NSLayoutConstraint.activate([
            photoImageView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0),
            photoImageView.widthAnchor.constraint(equalTo: containerView.widthAnchor,multiplier: 0.5, constant: 0),
            photoImageView.heightAnchor.constraint(equalTo: photoImageView.widthAnchor,multiplier: 1),
            photoImageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: -100)

        ])
    
        
        
        covidLabel.topAnchor.constraint(equalTo: photoImageView.bottomAnchor, constant: 40).isActive = true
        covidLabel.centerXAnchor.constraint(equalTo: photoImageView.centerXAnchor, constant: 0).isActive = true
        
    }
    
    

   
}
