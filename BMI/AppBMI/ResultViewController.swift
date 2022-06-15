//
//  ResultViewController.swift
//  AppBMI
//
//  Created by Taof on 11/4/20.
//

import UIKit

class ResultViewController: UIViewController {

    let titleView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let titleLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "YOUR RESULT"
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.textColor = UIColor.white
        label.textAlignment = .left
        return label
    }()
    
    let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        view.layer.cornerRadius = 5
        return view
    }()
    
    let reCalculatorButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("RE-CACULATOR", for: .normal)
        button.backgroundColor = UIColor(red: 0.91, green: 0.24, blue: 0.40, alpha: 1.00)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(onCalculator(_:)), for: .touchUpInside)
        return button
    }()
    
    let stackView: UIStackView = {
       let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        return stackView
    }()
    
    let statusLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "NORMAL"
        label.textColor = UIColor.green
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    let resultLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "22.22"
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textColor = UIColor.white
        label.textAlignment = .center
        return label
    }()
    
    let commentLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "You have a normal body weight. Good job!"
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    let margin: CGFloat = 20
    var topPadding: CGFloat = {
        if #available(iOS 11.0, *) {
            return 44
        } else {
            return 0
        }
    }()
    
    var result : Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 0.11, green: 0.14, blue: 0.21, alpha: 1.00)
        
        addControls()
        setupLayout()
        
        if let newResult = result {
            resultLabel.text = "\(newResult)"
            if newResult < 18 {
                statusLabel.text = "gầy"

                commentLabel.text = "Nghiện"
                
            }else if newResult <= 25 {
                statusLabel.text = "ok vjp pro"

                commentLabel.text = "ok"
            }else {
                statusLabel.text = "Béo"

                commentLabel.text = "Lợn"
            }
        }
    }
    
    // set lightContent cho StatusBar
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    func addControls(){
        view.addSubview(titleView)
        view.addSubview(contentView)
        
        titleView.addSubview(titleLabel)
        view.addSubview(reCalculatorButton)
        contentView.addSubview(stackView)
        stackView.addArrangedSubview(statusLabel)
        stackView.addArrangedSubview(resultLabel)
        stackView.addArrangedSubview(commentLabel)
    }
    
    func setupLayout(){
        
        titleView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        titleView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        titleView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        titleView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 2/11, constant: -margin).isActive = true
        
        contentView.topAnchor.constraint(equalTo: titleView.bottomAnchor, constant: margin).isActive = true
        contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
        contentView.bottomAnchor.constraint(equalTo: reCalculatorButton.topAnchor, constant: -margin).isActive = true
        
        reCalculatorButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        reCalculatorButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0).isActive = true
        reCalculatorButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0).isActive = true
        reCalculatorButton.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: 0).isActive = true
        
        titleLabel.leadingAnchor.constraint(equalTo: titleView.leadingAnchor, constant: margin).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: titleView.trailingAnchor, constant: 0).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: titleView.bottomAnchor, constant: 0).isActive = true
        
        stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: margin).isActive = true
        stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 2*margin).isActive = true
        stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -2*margin).isActive = true
        stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -margin).isActive = true
       
    }
    
    // tính BMI
    @objc func onCalculator(_ sender: UIButton){
        dismiss(animated: true, completion: nil)
    }
    
}
