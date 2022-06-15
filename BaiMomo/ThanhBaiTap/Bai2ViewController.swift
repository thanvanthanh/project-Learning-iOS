//
//  Bai2ViewController.swift
//  ThanhBaiTap
//
//  Created by Thanh on 3/23/21.
//

import UIKit

class Bai2ViewController: UIViewController {
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.73, green: 0.00, blue: 0.42, alpha: 1.00)
        
        return view
    }()
    
    let textLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Xin Chào!"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.textAlignment = .center
        label.textColor = UIColor.white
        return label
        
    }()
    
    let nameLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Thân Văn Thanh"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = UIColor.white
        label.textAlignment = .center
        
        return label
    }()
    
    let phoneLabel :UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0366222222"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .center
        label.textColor = UIColor.white
        return label
    }()
    let passField : UITextField = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isSecureTextEntry = true
        view.clipsToBounds = true

        view.backgroundColor = UIColor.white
        view.textAlignment = .center
        view.placeholder = "● ● ● ● ● ●"
        
//        view.leftViewMode = UITextField.ViewMode.always
//        let imageView = UIImageView()
//        let image = UIImage(named: "khoa")
//        imageView.image = image
//        view.leftView = imageView


        return view
    }()
    let loginView : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 0.59, green: 0.00, blue: 0.35, alpha: 1.00)
        button.setTitle("Đăng Nhập", for: .normal)
//        button.contentVerticalAlignment = .center
//        button.titleLabel?.textColor = UIColor.white
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.layer.cornerRadius = 30
        button.layer.borderColor = UIColor(red: 0.59, green: 0.00, blue: 0.35, alpha: 1.00).cgColor
        button.layer.borderWidth = 1
        return button
    }()
    
    let quenpassButton : UIButton = {
    let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("QUÊN MẬT KHẨU", for: .normal)
        button.layer.borderColor = UIColor(red: 0.73, green: 0.00, blue: 0.42, alpha: 1.00).cgColor
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        
        return button
    }()
    let exitButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("THOÁT TÀI KHOẢN", for: .normal)
        button.layer.borderColor = UIColor(red: 0.73, green: 0.00, blue: 0.42, alpha: 1.00).cgColor
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        passField.layer.cornerRadius = 30

        // Do any additional setup after loading the view.
        setupLayout()
    }
    func setupLayout(){
        view.addSubview(containerView)
        containerView.addSubview(textLabel)
        containerView.addSubview(nameLabel)
        containerView.addSubview(phoneLabel)
        containerView.addSubview(passField)
        containerView.addSubview(loginView)
        containerView.addSubview(quenpassButton)
        containerView.addSubview(exitButton)
        
        containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        
        //label "Xin Chào"
        textLabel.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor, constant: 0).isActive = true
        textLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        textLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor,multiplier: 1, constant: 0).isActive = true
        textLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        // label "Thân Văn Thanh"
        
        nameLabel.topAnchor.constraint(equalTo: textLabel.layoutMarginsGuide.bottomAnchor, constant: 20).isActive = true
        nameLabel.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor, constant: 0).isActive = true
        nameLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.8).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        // label "so dien thoai"
        phoneLabel.topAnchor.constraint(equalTo: nameLabel.layoutMarginsGuide.bottomAnchor, constant: 20).isActive = true
        phoneLabel.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor, constant: 0).isActive = true
        phoneLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.8).isActive = true
        phoneLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //passView
        passField.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor, constant: 0).isActive = true
        passField.topAnchor.constraint(equalTo: phoneLabel.layoutMarginsGuide.bottomAnchor, constant: 20).isActive = true
        passField.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.8).isActive = true
        passField.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 1/12).isActive = true
        
        //button đăng nhập
        loginView.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor, constant: 0).isActive = true
        loginView.topAnchor.constraint(equalTo: passField.layoutMarginsGuide.bottomAnchor, constant: 30).isActive = true
        loginView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.8).isActive = true
        loginView.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 1/12).isActive = true
        
        //button quên pass
        quenpassButton.topAnchor.constraint(equalTo: loginView.layoutMarginsGuide.bottomAnchor, constant: 30).isActive = true
        quenpassButton.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 20).isActive = true
        quenpassButton.widthAnchor.constraint(equalTo: loginView.layoutMarginsGuide.widthAnchor, multiplier: 0.4).isActive = true
        quenpassButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
        quenpassButton.trailingAnchor.constraint(equalTo: exitButton.layoutMarginsGuide.leadingAnchor, constant: -30).isActive = true
        
        //button exit
        exitButton.topAnchor.constraint(equalTo: loginView.layoutMarginsGuide.bottomAnchor, constant: 30).isActive = true
        exitButton.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -20).isActive = true
        exitButton.widthAnchor.constraint(equalTo: loginView.layoutMarginsGuide.widthAnchor, multiplier: 0.4).isActive = true
        exitButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
        exitButton.centerXAnchor.constraint(equalTo: quenpassButton.layoutMarginsGuide.centerXAnchor, constant: 0).isActive = true
        
    }
    
    
}
