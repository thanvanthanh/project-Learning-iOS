//
//  MAn2ViewController.swift
//  BaitapBMIThanh
//
//  Created by Thân Văn Thanh on 3/26/21.
//

import UIKit

class Man2ViewController: UIViewController {
    let topLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Your Result"
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textColor = .white
        label.textAlignment = .center
        return label
    
    }()
    let myView : UIView = {
        let view = UIView ()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        view.layer.cornerRadius = 10
        return view
    }()
    
    let reButton : UIButton = {
        let button = UIButton ()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("RE-CALCULATE", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.backgroundColor = UIColor(red: 0.91, green: 0.24, blue: 0.40, alpha: 1.00)
        button.layer.cornerRadius = 5
        return button
    }()
    let midLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 70)
        label.textAlignment = .center
        
        return label
    }()
    let normalLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "NORMAL"
        label.textColor = UIColor(red: 0.48, green: 0.78, blue: 0.61, alpha: 1.00)
        
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    
    let bottomLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Good job!"
        label.textColor = UIColor(red: 0.82, green: 0.82, blue: 0.84, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    let mylabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "You have a normal body weight."
        label.textColor = UIColor(red: 0.82, green: 0.82, blue: 0.84, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    var BMI : Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0.11, green: 0.13, blue: 0.21, alpha: 1.00)
        

        setupLayout()
        //add backMan1
        reButton.addTarget(self, action: #selector(backMan1), for: .touchUpInside)
        midLabel.text = String(BMI!)
    
        // Do any additional setup after loading the view.
    }
    
    func setTitle(title: String, judge: String, titleColor: UIColor)  {
        normalLabel.text = title
        normalLabel.textColor = titleColor
        mylabel.text = judge
        
    func bmiCalculate(){
        midLabel.text = String(BMI!)
        if BMI! < 18.5 {
            setTitle(title: "UNDERWEIGHT", judge: "You have an underweight body. You should eat more", titleColor: UIColor(red: 0.58, green: 0.71, blue: 0.84, alpha: 1.00))
        }
        else if BMI! >= 18.5 && BMI! < 25 {
            setTitle(title: "NORMAL", judge: "You have a normal body weight. Good job", titleColor: UIColor(red: 0.46, green: 0.75, blue: 0.60, alpha: 1.00))
        }
        else if BMI! >= 25 && BMI! < 30 {
            setTitle(title: "OVERWEIGHT", judge: "You have an overweight body. You should lose weight", titleColor: UIColor(red: 0.96, green: 0.83, blue: 0.27, alpha: 1.00))
        }
        else if BMI! >= 30 && BMI! < 35 {
            setTitle(title: "OBESE", judge: "You have a obese body. You should lose weight", titleColor: UIColor(red: 0.91, green: 0.60, blue: 0.37, alpha: 1.00))
        }
        else {
            setTitle(title: "EXTREMLY OBESE", judge: "You have a extremly obese body. You should lose weight", titleColor: UIColor(red: 0.84, green: 0.36, blue: 0.36, alpha: 1.00))
        }
    }
    
    }
    @objc func backMan1(_ sender : Any) {
        
        dismiss(animated: true)
    }
func setupLayout(){
    view.addSubview(topLabel)
    view.addSubview(myView)
    view.addSubview(reButton)
    myView.addSubview(midLabel)
    myView.addSubview(normalLabel)
    myView.addSubview(mylabel)
    myView.addSubview(bottomLabel)
    
    //topLabel
    topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
    topLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
    
    //myView
    myView.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 20).isActive = true
    myView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.74).isActive = true
    myView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    myView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    //reButton
    reButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -5).isActive = true
    reButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    reButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    reButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
    
    //normalLabel
    normalLabel.topAnchor.constraint(equalTo: myView.topAnchor, constant: 100).isActive = true
    normalLabel.centerXAnchor.constraint(equalTo: myView.centerXAnchor, constant: 0).isActive = true
    
    //midLabel
    midLabel.centerXAnchor.constraint(equalTo: myView.centerXAnchor, constant: 0).isActive = true
    midLabel.centerYAnchor.constraint(equalTo: myView.centerYAnchor, constant: -20).isActive = true
    
    //bottomLabel
    bottomLabel.centerXAnchor.constraint(equalTo: myView.centerXAnchor, constant: 0).isActive = true
    bottomLabel.bottomAnchor.constraint(equalTo: myView.bottomAnchor, constant: -120).isActive = true
    
    //myLabel
    mylabel.bottomAnchor.constraint(equalTo: bottomLabel.topAnchor, constant: -1).isActive = true
    mylabel.centerXAnchor.constraint(equalTo: bottomLabel.centerXAnchor, constant: 0).isActive = true

}
    /*
    // MARK: - Navigationr

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
