//
//  ViewController.swift
//  AppBMI
//
//  Created by Taof on 11/4/20.
//

import UIKit

class ViewController: UIViewController {
    
    let titleView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.11, green: 0.13, blue: 0.21, alpha: 1.00)
        return view
    }()
    
    let titleLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "BMI CALCULATOR"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.backgroundColor = UIColor(red: 0.11, green: 0.13, blue: 0.21, alpha: 1.00)
        return label
    }()
    
    let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.11, green: 0.13, blue: 0.21, alpha: 1.00)
        return view
    }()
    
    let maleView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        view.layer.cornerRadius = 5
        return view
    }()
    
    let maleIcon: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "male")?.withRenderingMode(.alwaysTemplate)
        imageView.tintColor = UIColor(red: 0.34, green: 0.79, blue: 0.93, alpha: 1.00)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let maleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "MALE"
        label.textColor = UIColor(red: 0.44, green: 0.45, blue: 0.50, alpha: 1.00)
        return label
    }()
    
    let femaleView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        view.layer.cornerRadius = 5
        return view
    }()
    
    let femaleIcon: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "female")?.withRenderingMode(.alwaysTemplate)
        imageView.tintColor = UIColor(red: 0.94, green: 0.32, blue: 0.18, alpha: 1.00)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let femaleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "FEMALE"
        label.textColor = UIColor(red: 0.44, green: 0.45, blue: 0.50, alpha: 1.00)
        return label
    }()
    
    let heightView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        view.layer.cornerRadius = 5
        return view
    }()
    
    let heightStackView: UIStackView = {
       let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        return stackView
    }()
    
    let heightLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "HEIGHT"
        label.textColor = UIColor(red: 0.44, green: 0.45, blue: 0.50, alpha: 1.00)
        return label
    }()
    
    let cmLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "150 cm"
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = UIColor.white
        return label
    }()
    
    let heightSlider: UISlider = {
       let slider = UISlider()
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.minimumValue = 50
        slider.maximumValue = 220
        slider.value = 150
        slider.thumbTintColor = UIColor.white
        slider.tintColor = UIColor(red: 0.91, green: 0.24, blue: 0.40, alpha: 1.00)
        slider.addTarget(self, action: #selector(changeSider(_:)), for: .valueChanged)
        return slider
    }()
    
    let weightView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        view.layer.cornerRadius = 5
        return view
    }()
    
    let weightLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "WEIGHT"
        label.textColor = UIColor(red: 0.44, green: 0.45, blue: 0.50, alpha: 1.00)
        return label
    }()
    
    let weightNumberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "50"
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = .white
        return label
    }()
    
    let weightMinusIcon: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "minus")?.withRenderingMode(.alwaysTemplate)
        imageView.tintColor = UIColor.white
        imageView.backgroundColor = UIColor(red: 0.37, green: 0.38, blue: 0.43, alpha: 1.00)
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    
    let weightPlusIcon: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "plus")?.withRenderingMode(.alwaysTemplate)
        imageView.tintColor = UIColor.white
        imageView.backgroundColor = UIColor(red: 0.37, green: 0.38, blue: 0.43, alpha: 1.00)
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    
    let ageView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        view.layer.cornerRadius = 5
        return view
    }()
    
    let ageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "AGE"
        label.textColor = UIColor(red: 0.44, green: 0.45, blue: 0.50, alpha: 1.00)
        return label
    }()
    
    let ageNumberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "20"
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = .white
        return label
    }()
    
    let ageMinusIcon: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "minus")?.withRenderingMode(.alwaysTemplate)
        imageView.tintColor = UIColor.white
        imageView.backgroundColor = UIColor(red: 0.37, green: 0.38, blue: 0.43, alpha: 1.00)
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    
    let agePlusIcon: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "plus")?.withRenderingMode(.alwaysTemplate)
        imageView.tintColor = UIColor.white
        imageView.backgroundColor = UIColor(red: 0.37, green: 0.38, blue: 0.43, alpha: 1.00)
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    
    let calculateButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("CALCULATE", for: .normal)
        button.backgroundColor = UIColor(red: 0.91, green: 0.24, blue: 0.40, alpha: 1.00)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(onCalculator(_:)), for: .touchUpInside)
        return button
    }()
    
    let margin: CGFloat = 20
    
    // hằng số
    let minHeight: Float = 50
    let maxHeight: Float = 250
    let minWeight: Int = 20
    let maxWeight: Int = 200
    let minAge: Int = 1
    let maxAge: Int = 120
    
    // biến lưu giá trị hiện tại, có thể thay đổi
    var height: Float = 150
    var weight: Int = 50
    var age: Int = 20
    
    var ismale : Bool = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeGender(ismale)
        
        view.backgroundColor = UIColor.black
        
        cmLabel.text = "\(height) cm"
        weightNumberLabel.text = "\(weight)"
        ageNumberLabel.text = "\(age)"
        
        addControls()
        setupLayout()
        
        // add gesture cho maleView va femaleView
        
        let tapMaleGesture = UITapGestureRecognizer(target: self, action: #selector(onTapMale))
        maleView.addGestureRecognizer(tapMaleGesture)
        
        let tapFemaleGesture = UITapGestureRecognizer(target: self, action: #selector(onTapFemale))
        femaleView.addGestureRecognizer(tapFemaleGesture)
        
        //add gesture cho weighPlus và weighMinus
        let tapWeighPlus = UITapGestureRecognizer(target: self, action: #selector(increaseWeigh))
        weightPlusIcon.addGestureRecognizer(tapWeighPlus)
        
        let tapWeighMinus = UITapGestureRecognizer(target: self, action: #selector(decreaseWeigh))
        weightMinusIcon.addGestureRecognizer(tapWeighMinus)
        
        //age
        let tapAgePlus = UITapGestureRecognizer(target: self, action: #selector(increaseAge))
        agePlusIcon.addGestureRecognizer(tapAgePlus)
        
        let tapAgeMinus = UITapGestureRecognizer(target: self, action: #selector(decreaseAge))
        ageMinusIcon.addGestureRecognizer(tapAgeMinus)
        
        
        
    }
    //giam tuoi
    @objc func decreaseAge(){
        if age <= minAge{
            age = minAge
        }else {
            age = age - 1
        }
        ageNumberLabel.text = "\(age)"
    }
    //tang tuoi
    @objc func increaseAge(){
        if age >= maxAge{
            age = maxAge
        }else {
            age = age + 1
        }
        ageNumberLabel.text = "\(age)"
    
    }
    //giam can
    @objc func decreaseWeigh(){
        if weight <= minWeight{
            weight = minWeight
        }else {
            weight = weight - 1
        }
        weightNumberLabel.text = "\(weight)"
    }
    //tang can
    @objc func increaseWeigh(){
        if weight >= maxWeight{
            weight = maxWeight
        }else {
            weight = weight + 1
        }
        weightNumberLabel.text = "\(weight)"
    
    }
    
    @objc func onTapMale(){
        
        ismale = true
        changeGender(ismale)
    
    }
    
    @objc func onTapFemale(){
        ismale = false
        changeGender(ismale)
    
    }
    func changeGender(_ value : Bool){
        if value {
            maleView.backgroundColor = UIColor.gray
            femaleView.backgroundColor = UIColor.brown
        }else {
            maleView.backgroundColor = .brown
            femaleView.backgroundColor = .gray
        }
        ismale = !ismale

    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        weightPlusIcon.layer.cornerRadius = weightPlusIcon.bounds.height/2
        weightPlusIcon.clipsToBounds = true
        
        weightMinusIcon.layer.cornerRadius = weightMinusIcon.bounds.height/2
        weightMinusIcon.clipsToBounds = true
        
        agePlusIcon.layer.cornerRadius = agePlusIcon.bounds.height/2
        agePlusIcon.clipsToBounds = true
        
        ageMinusIcon.layer.cornerRadius = ageMinusIcon.bounds.height/2
        ageMinusIcon.clipsToBounds = true
    }
    
    // set lightContent cho StatusBar
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func addControls(){
        view.addSubview(titleView)
        view.addSubview(contentView)
        
        titleView.addSubview(titleLabel)
        contentView.addSubview(maleView)
        contentView.addSubview(femaleView)
        contentView.addSubview(heightView)
        contentView.addSubview(weightView)
        contentView.addSubview(ageView)
        contentView.addSubview(calculateButton)
        
        maleView.addSubview(maleIcon)
        maleView.addSubview(maleLabel)
        
        femaleView.addSubview(femaleIcon)
        femaleView.addSubview(femaleLabel)
        
        heightView.addSubview(heightStackView)
        heightStackView.addArrangedSubview(heightLabel)
        heightStackView.addArrangedSubview(cmLabel)
        heightStackView.addArrangedSubview(heightSlider)
        
        weightView.addSubview(weightLabel)
        weightView.addSubview(weightNumberLabel)
        weightView.addSubview(weightMinusIcon)
        weightView.addSubview(weightPlusIcon)
        
        ageView.addSubview(ageLabel)
        ageView.addSubview(ageNumberLabel)
        ageView.addSubview(ageMinusIcon)
        ageView.addSubview(agePlusIcon)
    }
    
    func setupLayout(){
        
        titleView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        titleView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        titleView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        titleView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        contentView.topAnchor.constraint(equalTo: titleView.bottomAnchor, constant: 8).isActive = true
        contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        titleLabel.leadingAnchor.constraint(equalTo: titleView.leadingAnchor, constant: 0).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: titleView.trailingAnchor, constant: 0).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: titleView.bottomAnchor, constant: -8).isActive = true
        
        maleView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: margin).isActive = true
        maleView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: margin).isActive = true
    
        femaleView.topAnchor.constraint(equalTo: maleView.topAnchor, constant: 0).isActive = true
        femaleView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -margin).isActive = true
        femaleView.leadingAnchor.constraint(equalTo: maleView.trailingAnchor, constant: margin).isActive = true
        femaleView.widthAnchor.constraint(equalTo: maleView.widthAnchor, multiplier: 1).isActive = true
        femaleView.heightAnchor.constraint(equalTo: maleView.heightAnchor, multiplier: 1).isActive = true
        
        heightView.topAnchor.constraint(equalTo: maleView.bottomAnchor, constant: margin).isActive = true
        heightView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: margin).isActive = true
        heightView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -margin).isActive = true
        heightView.heightAnchor.constraint(equalTo: maleView.heightAnchor, multiplier: 1, constant: 0).isActive = true
        
        weightView.topAnchor.constraint(equalTo: heightView.bottomAnchor, constant: margin).isActive = true
        weightView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: margin).isActive = true
        weightView.heightAnchor.constraint(equalTo: heightView.heightAnchor, multiplier: 1, constant: 0).isActive = true
    
        ageView.topAnchor.constraint(equalTo: weightView.topAnchor, constant: 0).isActive = true
        ageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -margin).isActive = true
        ageView.leadingAnchor.constraint(equalTo: weightView.trailingAnchor, constant: margin).isActive = true
        ageView.widthAnchor.constraint(equalTo: weightView.widthAnchor, multiplier: 1).isActive = true
        ageView.heightAnchor.constraint(equalTo: weightView.heightAnchor, multiplier: 1).isActive = true
        
        calculateButton.topAnchor.constraint(equalTo: weightView.bottomAnchor, constant: margin).isActive = true
        calculateButton.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: 0).isActive = true
        calculateButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: margin).isActive = true
        calculateButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -margin).isActive = true
        calculateButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        // layout cac thanh phan con
        maleIcon.centerXAnchor.constraint(equalTo: maleView.centerXAnchor, constant: 0).isActive = true
        maleIcon.centerYAnchor.constraint(equalTo: maleView.centerYAnchor, constant: -margin/2).isActive = true
        maleIcon.widthAnchor.constraint(equalToConstant: 50).isActive = true
        maleIcon.heightAnchor.constraint(equalTo: maleIcon.widthAnchor, multiplier: 1, constant: 0).isActive = true
        
        maleLabel.topAnchor.constraint(equalTo: maleIcon.bottomAnchor, constant: margin/2).isActive = true
        maleLabel.centerXAnchor.constraint(equalTo: maleIcon.centerXAnchor, constant: 0).isActive = true
        
        femaleIcon.centerXAnchor.constraint(equalTo: femaleView.centerXAnchor, constant: 0).isActive = true
        femaleIcon.centerYAnchor.constraint(equalTo: femaleView.centerYAnchor, constant: -margin/2).isActive = true
        femaleIcon.widthAnchor.constraint(equalToConstant: 50).isActive = true
        femaleIcon.heightAnchor.constraint(equalTo: femaleIcon.widthAnchor, multiplier: 1, constant: 0).isActive = true
        
        femaleLabel.topAnchor.constraint(equalTo: femaleIcon.bottomAnchor, constant: margin/2).isActive = true
        femaleLabel.centerXAnchor.constraint(equalTo: femaleIcon.centerXAnchor, constant: 0).isActive = true
        
        heightStackView.topAnchor.constraint(equalTo: heightView.topAnchor, constant: 0).isActive = true
        heightStackView.leadingAnchor.constraint(equalTo: heightView.leadingAnchor, constant: 0).isActive = true
        heightStackView.trailingAnchor.constraint(equalTo: heightView.trailingAnchor, constant: 0).isActive = true
        heightStackView.bottomAnchor.constraint(equalTo: heightView.bottomAnchor, constant: 0).isActive = true
        
        heightSlider.widthAnchor.constraint(equalTo: heightView.widthAnchor, multiplier: 4/5, constant: 0).isActive = true
        
        weightNumberLabel.centerXAnchor.constraint(equalTo: weightView.centerXAnchor, constant: 0).isActive = true
        weightNumberLabel.centerYAnchor.constraint(equalTo: weightView.centerYAnchor, constant: 0).isActive = true
        
        weightLabel.bottomAnchor.constraint(equalTo: weightNumberLabel.topAnchor, constant: -margin).isActive = true
        weightLabel.centerXAnchor.constraint(equalTo: weightNumberLabel.centerXAnchor, constant: 0).isActive = true
        
        weightPlusIcon.centerXAnchor.constraint(equalTo: weightNumberLabel.centerXAnchor, constant: margin*2).isActive = true
        weightPlusIcon.centerYAnchor.constraint(equalTo: weightNumberLabel.centerYAnchor, constant: margin*2).isActive = true
        weightPlusIcon.widthAnchor.constraint(equalToConstant: 30).isActive = true
        weightPlusIcon.heightAnchor.constraint(equalTo: weightPlusIcon.widthAnchor, multiplier: 1, constant: 0).isActive = true
        
        weightMinusIcon.centerXAnchor.constraint(equalTo: weightNumberLabel.centerXAnchor, constant: -margin*2).isActive = true
        weightMinusIcon.centerYAnchor.constraint(equalTo: weightNumberLabel.centerYAnchor, constant: margin*2).isActive = true
        weightMinusIcon.widthAnchor.constraint(equalToConstant: 30).isActive = true
        weightMinusIcon.heightAnchor.constraint(equalTo: weightPlusIcon.widthAnchor, multiplier: 1, constant: 0).isActive = true
        
        ageNumberLabel.centerXAnchor.constraint(equalTo: ageView.centerXAnchor, constant: 0).isActive = true
        ageNumberLabel.centerYAnchor.constraint(equalTo: ageView.centerYAnchor, constant: 0).isActive = true
        
        ageLabel.bottomAnchor.constraint(equalTo: ageNumberLabel.topAnchor, constant: -margin).isActive = true
        ageLabel.centerXAnchor.constraint(equalTo: ageNumberLabel.centerXAnchor, constant: 0).isActive = true
        
        agePlusIcon.centerXAnchor.constraint(equalTo: ageNumberLabel.centerXAnchor, constant: margin*2).isActive = true
        agePlusIcon.centerYAnchor.constraint(equalTo: ageNumberLabel.centerYAnchor, constant: margin*2).isActive = true
        agePlusIcon.widthAnchor.constraint(equalToConstant: 30).isActive = true
        agePlusIcon.heightAnchor.constraint(equalTo: agePlusIcon.widthAnchor, multiplier: 1, constant: 0).isActive = true
        
        ageMinusIcon.centerXAnchor.constraint(equalTo: ageNumberLabel.centerXAnchor, constant: -margin*2).isActive = true
        ageMinusIcon.centerYAnchor.constraint(equalTo: ageNumberLabel.centerYAnchor, constant: margin*2).isActive = true
        ageMinusIcon.widthAnchor.constraint(equalToConstant: 30).isActive = true
        ageMinusIcon.heightAnchor.constraint(equalTo: ageMinusIcon.widthAnchor, multiplier: 1, constant: 0).isActive = true
    }
    
    // thay đổi giá trị slider
    @objc func changeSider(_ sender: UISlider) {
        print(sender.value)
        cmLabel.text = formatNumber(sender.value) + "cm"
        height = Float(formatNumber(sender.value)) ?? 0
        
    }
    
    // tính BMI
    @objc func onCalculator(_ sender: UIButton){
        let h = height/100 // quy đổi từ cm về m
        let BMI = Float(weight) / powf(h, 2) // tính theo CT: can nang / chieu cao binh phuong
        
        
        print(BMI)
        let resultVC = ResultViewController()
        resultVC.result = roundTheNumber(BMI, 2)
        resultVC.modalPresentationStyle = .fullScreen
        
        present(resultVC, animated: true, completion: nil)
    }
    
    // format số về chuỗi
    func formatNumber(_ value: Float) -> String {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.groupingSeparator = "."
        formatter.decimalSeparator = ","
        formatter.maximumFractionDigits = 0
        formatter.numberStyle = .decimal
        
        return formatter.string(from: NSNumber(value: value)) ?? "0"
    }
    
    // làm tròn 2 chữ số sau dấu phẩy
    func roundTheNumber(_ value: Float, _ places: Int) -> Float {
        let divisor = powf(10.0, Float(places))
        return round(value * divisor) / divisor
    }
}

