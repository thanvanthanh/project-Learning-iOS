//
//  Man1ViewController.swift
//  BaitapBMIThanh
//
//  Created by Thân Văn Thanh on 3/26/21.
//

import UIKit

class Man1ViewController: UIViewController {
    
    let labeltopView : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "BMI CALCULATOR"
        //        label.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        label.textAlignment = .center
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 25)
        
        return label
    }()
    
    let horizontalView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.08, green: 0.10, blue: 0.18, alpha: 1.00)
        //  view.backgroundColor = .black
        return view
    }()
    let maleView :UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        view.layer.cornerRadius = 10
        
        return view
    }()
    let maleImage : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "male")
        //        image.tintColor = .blue
        image.contentMode = .scaleAspectFit
        return image
    }()
    let maleLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "MALE"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = UIColor.gray
        label.textAlignment = .center
        
        return label
    }()
    
    
    //female
    
    let femaleView :UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        view.layer.cornerRadius = 10
        
        return view
    }()
    let femaleImage : UIImageView = {
        
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "female")
        //        image.tintColor = .systemRed
        image.contentMode = .scaleAspectFit
        return image
    }()
    let femaleLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "FEMALE"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = UIColor.gray
        label.textAlignment = .center
        
        return label
    }()
    
    //viewSlider
    let viewSlider : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        view.layer.cornerRadius = 10
        
        
        return view
    }()
    
    var mySlider : UISlider = {
        let c = UISlider()
        c.translatesAutoresizingMaskIntoConstraints = false
        c.minimumValue = 1
        c.maximumValue = 300
        c.value = 150
        c.tintColor = UIColor(red: 0.59, green: 0.35, blue: 0.44, alpha: 1.00)
        c.addTarget(self, action: Selector(("sliderChange")), for: .valueChanged)
        c.addTarget(self, action: #selector(sliderChange(sender:)), for: .valueChanged)
        return c
        
    }()
    
    let textHeight : UILabel = {
        let text = UILabel ()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.text = "HEIGHT"
        text.textColor = UIColor.gray
        text.font = UIFont.systemFont(ofSize: 15)
        return text
    }()
    
    let numberSlider : UILabel = {
        let text = UILabel ()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textColor = .white
        text.text = "150"
        text.font = UIFont.boldSystemFont(ofSize: 25)
        text.textAlignment = .center
        
        return text
        
    }()
    let textCM : UILabel = {
        let text = UILabel ()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textColor = .white
        text.text = "cm"
        text.font = UIFont.systemFont(ofSize: 20)
        text.textAlignment = .center
        return text
    }()
    
    let calculateButton : UIButton = {
        let button = UIButton ()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("CALCULATE", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.backgroundColor = UIColor(red: 0.91, green: 0.24, blue: 0.40, alpha: 1.00)
        button.layer.cornerRadius = 5
        
        
        return button
    }()
    //weight
    
    let weightView : UIView = {
        let view = UIView ()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        view.layer.cornerRadius = 10
        return view
    }()
    let weightLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "WEIGHT"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = UIColor.gray
        label.textAlignment = .center
        return label
    }()
    let numberWeight : UILabel = {
        let text = UILabel ()
        
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textColor = .white
        text.text = "50"
        text.font = UIFont.boldSystemFont(ofSize: 25)
        text.textAlignment = .center
        
        return text
        
    }()
    let plusWeight : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("+", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.titleLabel?.textAlignment = .center
        button.backgroundColor = .gray
        
        return button
    }()
    let minusWeight : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("-", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.titleLabel?.textAlignment = .center
        button.backgroundColor = .gray
        //        button.layer.cornerRadius = 5
        //        button.clipsToBounds = true
        
        return button
    }()
    
    //age
    let ageView : UIView = {
        let view = UIView ()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        view.layer.cornerRadius = 10
        return view
    }()
    let ageLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "AGE"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = UIColor.gray
        label.textAlignment = .center
        return label
    }()
    let numberAge : UILabel = {
        let text = UILabel ()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textColor = .white
        text.text = "20"
        text.font = UIFont.boldSystemFont(ofSize: 25)
        text.textAlignment = .center
        
        return text
        
    }()
    let plusAge : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("+", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.titleLabel?.textAlignment = .center
        button.backgroundColor = .gray
        return button
    }()
    let minusAge : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("-", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.titleLabel?.textAlignment = .center
        button.backgroundColor = .gray
        
        return button
    }()
    var weight = 50
    var age = 20
    var ismale : Bool = true
    var height : Float = 0
    var weightChange : Float = 0
    var BMI : Float?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0.11, green: 0.13, blue: 0.21, alpha: 1.00)
        
        
        //slider
        mySlider.addTarget(self, action: #selector(sliderChange(sender:)), for: .valueChanged)
        
        
        // Do any additional setup after loading the view.
        setupLayout()
        
        //add hàm onMan2
        calculateButton.addTarget(self, action: #selector(onMan2), for: .touchUpInside)
    }
    @objc  func onMan2()  {
        let bmi : Float = Float(weightChange / ((Float(height)/100) * 2))
        let man2VC = Man2ViewController()
        man2VC.BMI = bmi
        man2VC.modalPresentationStyle = .fullScreen
        present(man2VC, animated: true )
        
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        minusWeight.layer.cornerRadius = minusWeight.bounds.height/2
        plusWeight.layer.cornerRadius = plusWeight.bounds.height/2
        minusAge.layer.cornerRadius = minusAge.bounds.height/2
        plusAge.layer.cornerRadius = plusAge.bounds.height/2
        
        plusAge.addTarget(self, action: #selector(onIncreaseAge), for: .touchUpInside)
        minusAge.addTarget(self, action: #selector(onDecreaseAge), for: .touchUpInside)
        
        plusWeight.addTarget(self, action: #selector(onIncrease), for: .touchUpInside)
        minusWeight.addTarget(self, action: #selector(onDecrease), for: .touchUpInside)
        
        let tapGestureMale = UITapGestureRecognizer(target: self, action: #selector(malePress))
        maleView.addGestureRecognizer(tapGestureMale)
        maleView.isUserInteractionEnabled = true
        
        
        let tapGestureFemale = UITapGestureRecognizer(target: self, action: #selector(femalePress))
        femaleView.addGestureRecognizer(tapGestureFemale)
        femaleView.isUserInteractionEnabled = true
    }
    @objc func onDecrease() {
        if weight > 0 {
            weight -= 1
            numberWeight.text = "\(weight)"
            
        }
        weightChange = Float(weight)
            
    }
    
    @objc func onIncrease() {
        weight += 1
        numberWeight.text = "\(weight)"
        weightChange = Float(weight)
    }
    
    @objc func onDecreaseAge() {
        if age > 0 {
            age -= 1
            numberAge.text = "\(age)"
            
        }
    }
    
    
    
    @objc func onIncreaseAge() {
        age += 1
        numberAge.text = "\(age)"
    }
    @objc private func malePress(){
        if ismale == true{
            maleView.backgroundColor = .darkGray
            femaleView.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
            
        }
        else{
            maleView.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
            femaleView.backgroundColor = .darkGray
            
        }
        ismale = !ismale
        
        
    }
    
    @objc private func femalePress(){
        if ismale == false{
            femaleView.backgroundColor = .darkGray
            maleView.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
            
            
        }
        else{
            femaleView.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
            maleView.backgroundColor = .darkGray
            
        }
        ismale = !ismale
    }
    
    
    // thêm event slider 
    @objc func sliderChange(sender: UISlider) {
        numberSlider.font = UIFont.boldSystemFont(ofSize: 25)
        
        numberSlider.text = "\(Int(sender.value))"
        print("change", sender.value)
        height = Float(sender.value)
    }
    //numberLable.attributedText = customString(num: Int(slider.value * Float(numberHeight)))
    
    
    func setupLayout(){
        view.addSubview(labeltopView)
        view.addSubview(horizontalView)
        view.addSubview(maleView)
        view.addSubview(femaleView)
        view.addSubview(calculateButton)
        view.addSubview(weightView)
        view.addSubview(ageView)
        
        //male
        maleView.addSubview(maleImage)
        maleView.addSubview(maleLabel)
        //female
        femaleView.addSubview(femaleImage)
        femaleView.addSubview(femaleLabel)
        
        //slider
        view.addSubview(viewSlider)
        viewSlider.addSubview(textHeight)
        viewSlider.addSubview(numberSlider)
        viewSlider.addSubview(mySlider)
        viewSlider.addSubview(textCM)
        
        //weight
        weightView.addSubview(weightLabel)
        weightLabel.addSubview(numberWeight)
        weightView.addSubview(plusWeight)
        weightView.addSubview(minusWeight)
        
        //age
        ageView.addSubview(ageLabel)
        ageView.addSubview(numberAge)
        ageView.addSubview(plusAge)
        ageView.addSubview(minusAge)
        
        
        
        // BMI
        labeltopView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5).isActive = true
        labeltopView.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor).isActive = true
        labeltopView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.6).isActive = true
        labeltopView.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 1/15).isActive = true
        //horizontal
        horizontalView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        horizontalView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        horizontalView.topAnchor.constraint(equalTo: labeltopView.bottomAnchor, constant: 5)
            .isActive = true
        horizontalView.heightAnchor.constraint(equalToConstant: 5).isActive = true
        
        // maleView
        maleView.topAnchor.constraint(equalTo: horizontalView.bottomAnchor, constant: 15).isActive = true
        maleView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        maleView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        maleView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25).isActive = true
        
        //maleImage
        maleImage.centerXAnchor.constraint(equalTo: maleView.centerXAnchor, constant: 0).isActive = true
        maleImage.centerYAnchor.constraint(equalTo: maleView.centerYAnchor, constant: 0).isActive = true
        maleImage.widthAnchor.constraint(equalTo: maleView.widthAnchor, multiplier: 0.4).isActive = true
        maleImage.heightAnchor.constraint(equalTo: maleView.heightAnchor, multiplier: 0.4).isActive = true
        //maleLabel
        maleLabel.centerXAnchor.constraint(equalTo: maleView.centerXAnchor, constant: 0).isActive = true
        maleLabel.topAnchor.constraint(equalTo: maleImage.bottomAnchor, constant: 1).isActive = true
        
        
        //femaleView
        femaleView.centerYAnchor.constraint(equalTo: maleView.centerYAnchor, constant: 0).isActive = true
        femaleView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        femaleView.widthAnchor.constraint(equalTo: maleView.widthAnchor, multiplier: 1).isActive = true
        femaleView.heightAnchor.constraint(equalTo: maleView.heightAnchor, multiplier: 1).isActive = true
        
        
        //femaleImage
        femaleImage.centerXAnchor.constraint(equalTo: femaleView.centerXAnchor, constant: 0).isActive = true
        femaleImage.centerYAnchor.constraint(equalTo: femaleView.centerYAnchor, constant: 0).isActive = true
        femaleImage.widthAnchor.constraint(equalTo: maleImage.widthAnchor, multiplier: 1).isActive = true
        femaleImage.heightAnchor.constraint(equalTo: maleImage.heightAnchor, multiplier: 1).isActive = true
        
        //femaleLabel
        femaleLabel.centerXAnchor.constraint(equalTo: femaleView.centerXAnchor, constant: 0).isActive = true
        femaleLabel.topAnchor.constraint(equalTo: femaleImage.bottomAnchor, constant: 1).isActive = true
        
        //viewSlider
        viewSlider.topAnchor.constraint(equalTo: maleView.bottomAnchor, constant: 20).isActive = true
        viewSlider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        viewSlider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        viewSlider.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.20).isActive = true
        //textHeight
        
        textHeight.centerXAnchor.constraint(equalTo: viewSlider.centerXAnchor, constant: 0).isActive = true
        textHeight.topAnchor.constraint(equalTo: viewSlider.topAnchor, constant: 10).isActive = true
        
        
        //numberSlider
        numberSlider.centerXAnchor.constraint(equalTo: viewSlider.centerXAnchor, constant: 0).isActive = true
        numberSlider.topAnchor.constraint(equalTo: textHeight.bottomAnchor, constant: 15).isActive = true
        //textCM
        textCM.leadingAnchor.constraint(equalTo: numberSlider.trailingAnchor, constant: 3).isActive = true
        textCM.bottomAnchor.constraint(equalTo: numberSlider.bottomAnchor, constant: 0).isActive = true
        
        //mySlider
        mySlider.centerXAnchor.constraint(equalTo: viewSlider.centerXAnchor, constant: 0).isActive = true
        mySlider.topAnchor.constraint(equalTo: numberSlider.bottomAnchor, constant: 10).isActive = true
        mySlider.widthAnchor.constraint(equalTo: viewSlider.widthAnchor, multiplier: 0.9).isActive = true
        mySlider.heightAnchor.constraint(equalToConstant: 10).isActive = true
        
        
        //calculateButton
        calculateButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -5).isActive = true
        calculateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        calculateButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        calculateButton.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor, constant: 0).isActive = true
        
        //weight View
        weightView.topAnchor.constraint(equalTo: viewSlider.bottomAnchor, constant: 20).isActive = true
        weightView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        weightView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        weightView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25).isActive = true
        //weightNumber
        numberWeight.centerYAnchor.constraint(equalTo: weightView.centerYAnchor, constant: 1).isActive = true
        numberWeight.centerXAnchor.constraint(equalTo: weightView.centerXAnchor, constant: 1).isActive = true
        //weihtLabel
        weightLabel.bottomAnchor.constraint(equalTo: numberWeight.topAnchor, constant: -10).isActive = true
        weightLabel.centerXAnchor.constraint(equalTo: weightView.centerXAnchor, constant: 1).isActive = true
        //minusWeight
        minusWeight.topAnchor.constraint(equalTo: numberWeight.bottomAnchor, constant: 10).isActive = true
        minusWeight.leadingAnchor.constraint(equalTo: weightView.leadingAnchor, constant: 30).isActive = true
        minusWeight.heightAnchor.constraint(equalToConstant: 30).isActive = true
        minusWeight.widthAnchor.constraint(equalTo: minusWeight.widthAnchor, multiplier: 1).isActive = true
        //plusWeight
        plusWeight.centerYAnchor.constraint(equalTo: minusWeight.centerYAnchor, constant: 0).isActive = true
        plusWeight.trailingAnchor.constraint(equalTo: weightView.trailingAnchor, constant: -30).isActive = true
        plusWeight.heightAnchor.constraint(equalTo: minusWeight.heightAnchor, multiplier: 1).isActive = true
        plusWeight.widthAnchor.constraint(equalTo: minusWeight.widthAnchor, multiplier: 1).isActive = true
        //ageView
        ageView.topAnchor.constraint(equalTo: viewSlider.bottomAnchor, constant: 20).isActive = true
        ageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        ageView.widthAnchor.constraint(equalTo: weightView.widthAnchor, multiplier: 1).isActive = true
        ageView.heightAnchor.constraint(equalTo: weightView.heightAnchor, multiplier: 1).isActive = true
        //ageNumber
        numberAge.centerYAnchor.constraint(equalTo: ageView.centerYAnchor, constant: 1).isActive = true
        numberAge.centerXAnchor.constraint(equalTo: ageView.centerXAnchor, constant: 1).isActive = true
        //ageLabel
        ageLabel.bottomAnchor.constraint(equalTo: numberAge.topAnchor, constant: -10).isActive = true
        ageLabel.centerXAnchor.constraint(equalTo: ageView.centerXAnchor, constant: 1).isActive = true
        //minusAge
        minusAge.topAnchor.constraint(equalTo: numberAge.bottomAnchor, constant: 10).isActive = true
        minusAge.leadingAnchor.constraint(equalTo: ageView.leadingAnchor, constant: 30).isActive = true
        minusAge.heightAnchor.constraint(equalToConstant: 30).isActive = true
        minusAge.widthAnchor.constraint(equalTo: minusAge.widthAnchor, multiplier: 1).isActive = true
        //plusWeight
        plusAge.centerYAnchor.constraint(equalTo: minusAge.centerYAnchor, constant: 0).isActive = true
        plusAge.trailingAnchor.constraint(equalTo: ageView.trailingAnchor, constant: -30).isActive = true
        plusAge.heightAnchor.constraint(equalTo: minusAge.heightAnchor, multiplier: 1).isActive = true
        plusAge.widthAnchor.constraint(equalTo: minusAge.widthAnchor, multiplier: 1).isActive = true
    }
    
    
    
    
}
