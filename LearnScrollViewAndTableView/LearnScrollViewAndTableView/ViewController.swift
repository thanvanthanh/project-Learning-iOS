//
//  ViewController.swift
//  LearnScrollViewAndTableView
//
//  Created by Thân Văn Thanh on 4/9/21.
//

import UIKit

class ViewController: UIViewController {
    
    let scrollView : TPKeyboardAvoidingScrollView  = {
        let sc = TPKeyboardAvoidingScrollView ()
        sc.translatesAutoresizingMaskIntoConstraints = false
        sc.backgroundColor = .yellow
        
        return sc
    }()
    let containerView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        
        return view
        
    }()
    
    let nameTextField : UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.placeholder = "Name"
        text.backgroundColor = .white
        text.layer.cornerRadius = 10
        return text
        
    }()
    
    let phoneTextField : UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.placeholder = "Phone"
        text.backgroundColor = .white
        text.layer.cornerRadius = 10
        return text
        
    }()
    
    let passwordTextField : UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.placeholder = "Password"
        text.backgroundColor = .white
        text.layer.cornerRadius = 10
        return text
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scrollView)
        scrollView.addSubview(containerView)
        containerView.addSubview(nameTextField)
        containerView.addSubview(phoneTextField)
        containerView.addSubview(passwordTextField)
        
        
        
        setupLayout()
        //        scrollView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        //        scrollView.contentSize = CGSize(width: view.bounds.width*2, height: view.bounds.height*2)
        
    }
    func setupLayout () {
        scrollView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 0).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: 0).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 0).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: 0).isActive = true
        
        containerView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0).isActive = true
        
        containerView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9,constant: 0).isActive = true
//        containerView.heightAnchor.constraint(equalToConstant: 1000).isActive = true
        
        //name text field
        nameTextField.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 40).isActive = true
        nameTextField.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 40).isActive = true
        nameTextField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -40).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        //phone textfield
        phoneTextField.topAnchor.constraint(equalTo: nameTextField.topAnchor, constant: 300).isActive = true
        phoneTextField.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor, constant: 0).isActive = true
        phoneTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor, constant: 0).isActive = true
        phoneTextField.heightAnchor.constraint(equalTo: nameTextField.heightAnchor, multiplier: 1).isActive = true
        
        //password textfield
        passwordTextField.topAnchor.constraint(equalTo: phoneTextField.bottomAnchor, constant: 300).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: phoneTextField.leadingAnchor, constant: 0).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: phoneTextField.trailingAnchor, constant: 0).isActive = true
        passwordTextField.heightAnchor.constraint(equalTo: phoneTextField.heightAnchor, multiplier: 1).isActive = true
        
        passwordTextField.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -40).isActive = true

        
    }
    
    
}

