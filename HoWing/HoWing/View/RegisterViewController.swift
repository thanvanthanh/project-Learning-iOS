//
//  RegisterViewController.swift
//  HoWing
//
//  Created by Ishipo on 28/04/2021.
//

import UIKit

class RegisterViewController: UIViewController {

    let scrollView: TPKeyboardAvoidingScrollView = {
        let scrollView = TPKeyboardAvoidingScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsVerticalScrollIndicator = false
        return scrollView
    }()
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    let nameappLbl : UILabel = {
       let lbl = UILabel()
       lbl.translatesAutoresizingMaskIntoConstraints = false
       lbl.text = "HoWing"
       lbl.font = UIFont(name: "Papyrus", size: 23)
       lbl.contentMode = .scaleAspectFill
        lbl.textColor = .black
       
       return lbl
   }()
    
    
    let emailTextFild: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Email"
        textField.borderStyle = .roundedRect
        textField.textColor = UIColor.lightGray
        textField.tintColor = UIColor.lightGray
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Password"
        textField.borderStyle = .roundedRect
        textField.textColor = UIColor.lightGray
        textField.tintColor = UIColor.lightGray // cursor
        textField.isSecureTextEntry = true
        return textField
    }()
    
    let registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("REGISTER", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor(red: 0.07, green: 0.52, blue: 0.46, alpha: 1.00)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(onRegister), for: .touchUpInside)
        return button
    }()
    let backBt: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.backward"), for:.normal)
        button.addTarget(self, action: #selector(onBack), for: .touchUpInside)
        return button
    }()
    let hotlineLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .black

        let mainString = "Hotline: 1800.1186"
        let stringToColor = "1800.1186"
        let range = (mainString as NSString).range(of: stringToColor)
        
        let mutableAttributedString = NSMutableAttributedString.init(string: mainString)
        mutableAttributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(red: 0.07, green: 0.52, blue: 0.46, alpha: 1.00), range: range)

        label.attributedText = mutableAttributedString
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        addViews()
        setupLayout()
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.darkContent
    }
    
    func addViews(){
        view.addSubview(scrollView)
        scrollView.addSubview(containerView)
        containerView.addSubview(logoImageView)
        containerView.addSubview(nameappLbl)
//        containerView.addSubview(nameTextField)
        containerView.addSubview(emailTextFild)
        containerView.addSubview(passwordTextField)
        containerView.addSubview(registerButton)
        containerView.addSubview(hotlineLabel)
        containerView.addSubview(backBt)
    }
    
    func setupLayout(){
        let margin = view.layoutMarginsGuide
        let constant: CGFloat = 20
        scrollView.topAnchor.constraint(equalTo: margin.topAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        containerView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        containerView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        containerView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        containerView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        
        
        backBt.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        backBt.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
       


        
        logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: -2.5*constant).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoImageView.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.7).isActive = true
        logoImageView.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier: 0.7).isActive = true
        //
        nameappLbl.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: -150).isActive = true
        nameappLbl.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true

        emailTextFild.topAnchor.constraint(equalTo: nameappLbl.bottomAnchor, constant: 2*constant).isActive = true
        emailTextFild.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 2*constant).isActive = true
        emailTextFild.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -2*constant).isActive = true
        emailTextFild.heightAnchor.constraint(equalToConstant: 48).isActive = true
        
//        emailTextFild.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: constant).isActive = true
//        emailTextFild.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor, constant: 0).isActive = true
//        emailTextFild.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor, constant: 0).isActive = true
//        emailTextFild.heightAnchor.constraint(equalToConstant: 48).isActive = true

        passwordTextField.topAnchor.constraint(equalTo: emailTextFild.bottomAnchor, constant: constant).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: emailTextFild.leadingAnchor, constant: 0).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: emailTextFild.trailingAnchor, constant: 0).isActive = true
        passwordTextField.heightAnchor.constraint(equalTo: emailTextFild.heightAnchor).isActive = true
        
        registerButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: constant).isActive = true
        registerButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor, constant: 0).isActive = true
        registerButton.heightAnchor.constraint(equalTo: passwordTextField.heightAnchor).isActive = true
        registerButton.widthAnchor.constraint(equalTo: passwordTextField.widthAnchor, multiplier: 0.5).isActive = true
        
        
        hotlineLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -constant).isActive = true
        hotlineLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
//        containerView.bottomAnchor.constraint(greaterThanOrEqualTo: view.bottomAnchor, constant: 0).isActive = true
        
    }
    @objc func onRegister(){
        guard let email = emailTextFild.text, let password = passwordTextField.text else {
            return
        }
        
        FireBaseAuthManager.shared.register(email, password) { (status) in
            if status {
                let arlet = UIAlertController(title: "Account successfully created", message: "", preferredStyle: .alert)
                let cancel = UIAlertAction(title: "OK", style: .default, handler: {(act) in
                    
                    let vc = LoginViewController()
                    
                    vc.modalPresentationStyle = .fullScreen
                    self.present(vc, animated: true, completion: nil)
                    
                    
                })
                
                
                arlet.addAction(cancel)
                self.present(arlet, animated: true, completion: nil)

                
                print("tao tai khoan thanh cong")
            } else {
                let arlet = UIAlertController(title: "This email is already in use by someone else", message: "", preferredStyle: .alert)
                let cancel = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                
                arlet.addAction(cancel)
                self.present(arlet, animated: true, completion: nil)
                print("tạo tài khoản thất bại")
            }
        }
    }
    
    @objc func onBack() {
        dismiss(animated: true, completion: nil)
        
    }
    
    

}
