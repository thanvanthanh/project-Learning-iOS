//
//  LoginViewController.swift
//  HoWing
//
//  Created by Ishipo on 28/04/2021.
//
import AVKit
import AVFoundation
import UIKit

class LoginViewController: UIViewController {

    
    let scrollView: TPKeyboardAvoidingScrollView = {
        let scrollView = TPKeyboardAvoidingScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.backgroundColor = .white
        
        return scrollView
    }()
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        return view
    }()
    
    let sologanLbl : UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Give love in each dish"
        lbl.textAlignment = .center
        lbl.textColor = UIColor(displayP3Red: 0.138, green: 0.156, blue: 0.141, alpha: 1)
        lbl.font = UIFont(name: "Marker Felt Thin", size: 23)
        
        return lbl
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
        lbl.font = UIFont(name: "Papyrus", size: 17)
        lbl.contentMode = .scaleAspectFill
        lbl.textColor = .black
        
        return lbl
    }()
    let emailTextFild: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Email"
        textField.borderStyle = .roundedRect
        textField.textColor = UIColor.black
        textField.tintColor = UIColor.lightGray // cursor
//        textField.backgroundColor = .lightGray
        
//        textField.keyboardType = .numberPad
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Password"
        textField.borderStyle = .roundedRect
        textField.textColor = UIColor.black
        textField.tintColor = UIColor.lightGray // cursor
        textField.isSecureTextEntry = true
        return textField
    }()
    
    let registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("REGISTER", for: .normal)
        button.setTitleColor(.black, for:.normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(onRegister), for: .touchUpInside)
        return button
    }()
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("LOGIN", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor(red: 0.07, green: 0.52, blue: 0.46, alpha: 1.00)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(onLogin), for: .touchUpInside)
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
    
    
    override func viewWillAppear(_ animated: Bool) {
            emailTextFild.text = ""
            passwordTextField.text = ""

        }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "video", ofType: "mp4")!))
        let layer = AVPlayerLayer(player: player)
        layer.frame = CGRect(x: 0, y: 40, width: view.bounds.width, height: view.bounds.height/3)
        
//        layer.videoGravity = .resizeAspectFill
        player.volume = 0
        view.layer.addSublayer(layer)
        
        player.play()

        registerButton.titleLabel?.textColor = .lightGray
    }
    
    func addViews(){
        view.addSubview(scrollView)
        scrollView.addSubview(containerView)
        containerView.addSubview(sologanLbl)
        containerView.addSubview(logoImageView)
        containerView.addSubview(nameappLbl)
        containerView.addSubview(emailTextFild)
        containerView.addSubview(passwordTextField)
        containerView.addSubview(registerButton)
        containerView.addSubview(loginButton)
        containerView.addSubview(hotlineLabel)
        
    }
    
    func setupLayout(){
        let constant: CGFloat = 20
        
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        containerView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        containerView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        containerView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        containerView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        
        
        
        //
        
        sologanLbl.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive = true
        sologanLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
       
        emailTextFild.topAnchor.constraint(equalTo: sologanLbl.bottomAnchor, constant: constant).isActive = true
        emailTextFild.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 2*constant).isActive = true
        emailTextFild.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -2*constant).isActive = true
        emailTextFild.heightAnchor.constraint(equalToConstant: 48).isActive = true
        
        passwordTextField.topAnchor.constraint(equalTo: emailTextFild.bottomAnchor, constant: constant).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: emailTextFild.leadingAnchor, constant: 0).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: emailTextFild.trailingAnchor, constant: 0).isActive = true
        passwordTextField.heightAnchor.constraint(equalTo: emailTextFild.heightAnchor).isActive = true
        
        
        
        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor, constant: 0).isActive = true
        loginButton.heightAnchor.constraint(equalTo: passwordTextField.heightAnchor, multiplier: 1).isActive = true
        loginButton.widthAnchor.constraint(equalTo: passwordTextField.widthAnchor, multiplier: 1).isActive = true
        //
        registerButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10).isActive = true
        registerButton.trailingAnchor.constraint(equalTo: loginButton.trailingAnchor, constant: constant).isActive = true
        registerButton.heightAnchor.constraint(equalTo: loginButton.heightAnchor, multiplier: 1).isActive = true
        registerButton.widthAnchor.constraint(equalTo: loginButton.widthAnchor, multiplier: 0.5).isActive = true
        
        
        logoImageView.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: -80).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        logoImageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true
        //
        nameappLbl.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: -90).isActive = true
        nameappLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        
        hotlineLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:-constant).isActive = true
        hotlineLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(greaterThanOrEqualTo: view.bottomAnchor, constant: 0).isActive = true
        
    
 

}
    
    @objc func onRegister() {
        let registerVC = RegisterViewController()

        registerVC.modalPresentationStyle = .fullScreen
        present(registerVC, animated: true, completion: nil)
    }
    
    
    
    @objc func onLogin(){
        guard let email = emailTextFild.text, let password = passwordTextField.text else {
            return
        }
        
        FireBaseAuthManager.shared.login(email, password) { (status) in
            if status {
                print("Đăng nhập thành công")
                let homeVC = self.setupTabar()
                homeVC.modalPresentationStyle = .fullScreen
                self.present(homeVC, animated: true, completion: nil)
            }else{
                let arlet = UIAlertController(title: "Incorrect account or password", message: "", preferredStyle: .alert)
                let cancel = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                
                arlet.addAction(cancel)
                self.present(arlet, animated: true, completion: nil)
                
                print("Đăng nhập không thành công")
                
            }
        }
        
       

        
    }
    func setupTabar() -> UITabBarController {
        let tabBC = UITabBarController()
        
      
        
        let homeVC = UINavigationController(rootViewController: HomeViewController())
        homeVC.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))
        
        
        let seachVC = UINavigationController(rootViewController: SeachViewController())
        seachVC.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "text.magnifyingglass"),selectedImage: UIImage(systemName: "text.magnifyingglass.fill") )
        
        
        let favoritesVC = UINavigationController(rootViewController: MealPlanViewController())
        favoritesVC.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "newspaper"), selectedImage: UIImage(systemName: "newspaper.fill"))
        
        
    
        let profileVC = UINavigationController(rootViewController: ProfileViewController())
        profileVC.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "person.circle"),selectedImage: UIImage(systemName: "person.circle.fill"))
        
        tabBC.tabBar.barTintColor = UIColor(red: 0.93, green: 0.95, blue: 0.93, alpha: 1.00)
        tabBC.setViewControllers([homeVC, seachVC , favoritesVC,profileVC], animated: true)
        return tabBC
        
        
    }

    
}
