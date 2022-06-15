//
//  Bai3ViewController.swift
//  ThanhBaiTap
//
//  Created by Thanh on 3/24/21.
//

import UIKit

class Bai3ViewController: UIViewController {
    
    let imageView : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "facebook")
        image.tintColor = .red
        image.contentMode = .scaleAspectFit
        
    return image
    }()
    
    let userField : UITextField = {
    let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.placeholder = " Số điện thoại hoặc email"
        text.backgroundColor = UIColor.white
        //text.textAlignment = .center
        return text
    }()
    
    let passField : UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.placeholder = " Mật khẩu"
        text.isSecureTextEntry = true
        text.backgroundColor = UIColor.white
       // text.textAlignment = .center
        return text
    }()
    
    let loginButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Đăng nhập", for: .normal)
        button.backgroundColor = UIColor(red: 0.10, green: 0.47, blue: 0.95, alpha: 1.00)
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.setTitleColor(UIColor(red: 0.91, green: 0.95, blue: 1.00, alpha: 1.00), for: .normal)
        button.layer.cornerRadius = 5
    
        return button
    }()
    
    let forgotButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Quên mật khẩu?", for: .normal)
        button.setTitleColor(UIColor(red: 0.10, green: 0.47, blue: 0.95, alpha: 1.00), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        return button
    
    }()
    
    let returnButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Quay lại", for: .normal)
        button.setTitleColor(UIColor(red: 0.10, green: 0.47, blue: 0.95, alpha: 1.00), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        return button
    
    }()
    
    let label : UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.text = "HOẶC"
        text.textColor = UIColor.black
        text.textAlignment = .center
        
    return text
    }()
    
    let registerButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Tạo tài khoản mới", for: .normal)
        button.layer.backgroundColor =  UIColor(red: 0.91, green: 0.95, blue: 1.00, alpha: 1.00).cgColor
        button.setTitleColor(UIColor(red: 0.10, green: 0.47, blue: 0.95, alpha: 1.00), for: .normal)
        button.layer.cornerRadius = 5

        
    return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        userField.layer.borderWidth = 1
        userField.layer.borderColor = UIColor.lightGray.cgColor
        passField.layer.borderWidth = 1
        passField.layer.borderColor = UIColor.lightGray.cgColor

        setupLayout()
        // Do any additional setup after loading the view.
    }
    func setupLayout(){
        view.addSubview(imageView)
        view.addSubview(userField)
        view.addSubview(passField)
        view.addSubview(loginButton)
        view.addSubview(forgotButton)
        view.addSubview(returnButton)
        view.addSubview(registerButton)
        view.addSubview(label)
        
        
        
    //anh fb
        imageView.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor, constant: 0).isActive = true
        imageView.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.38).isActive = true
        
        
        //username
        userField.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20).isActive = true
        userField.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 30).isActive = true
        userField.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -30).isActive = true
        userField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        //pass
        passField.topAnchor.constraint(equalTo: userField.bottomAnchor, constant: -1).isActive = true
        passField.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 30).isActive = true
        passField.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -30).isActive = true
        passField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        //button login
        
        loginButton.topAnchor.constraint(equalTo: passField.bottomAnchor, constant: 20).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 30).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -30).isActive = true
        
        //forgotpassword
        forgotButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20).isActive = true
        forgotButton.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor, constant: 0).isActive = true
        
        //return
        returnButton.topAnchor.constraint(equalTo: forgotButton.bottomAnchor, constant: 10).isActive = true
        returnButton.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor, constant: 0).isActive = true
        
        //registerButton
        registerButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive  = true
        registerButton.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor, constant: 0).isActive = true
        registerButton.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 30).isActive = true
        registerButton.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -30).isActive = true
        
        //label "hoặc"
        label.bottomAnchor.constraint(equalTo: registerButton.layoutMarginsGuide.topAnchor, constant: -30).isActive = true
        label.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor, constant: 0).isActive = true
    }


    
}
