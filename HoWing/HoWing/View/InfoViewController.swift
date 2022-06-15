//
//  InfoViewController.swift
//  HoWing
//
//  Created by Ishipo on 02/05/2021.
//

import UIKit
import  Cosmos
import TinyConstraints

class InfoViewController: UIViewController {
    
    var dataF: mainData?
    
    
    let scrollView : UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.showsVerticalScrollIndicator = false
        view.backgroundColor = UIColor(red: 0.88, green: 0.49, blue: 0.18, alpha: 1.00)
        view.contentSize = CGSize()
        return view
    }()
    
    
    let imageV : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "dish1")
        image.contentMode = .scaleAspectFill
        
        
        return image
    }()
    let logoImage : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        image.clipsToBounds = true
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 20
        
        

        
        
        return image
    }()
    
  
    let botView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.93, green: 0.95, blue: 0.93, alpha: 1.00)
        return view
        
    }()
    
    let titleLable : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.numberOfLines = 2
        label.text = "Pan Fried Brussels"
        label.font = UIFont.init(name: "Chalkboard SE Bold", size: 24)
        return label
    }()
    let backBt: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.backward"), for:.normal)
        button.addTarget(self, action: #selector(onBack), for: .touchUpInside)
        return button
    }()
    let sourceNameLable : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.2
        label.numberOfLines = 2
        label.text = "I HEART VEGETABLES"
        label.font = UIFont.init(name: "Chalkboard SE Bold", size: 14)
        return label
    }()
    let calorisLbl : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = "100 Calories"
        label.font = UIFont.init(name: "Chalkboard SE Bold", size: 18)
        
        return label
    }()
    let timeLbl : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        label.numberOfLines = 2
        label.text = "15 Minutes"
        label.font = UIFont.init(name: "Chalkboard SE Bold", size: 14)
        
        label.clipsToBounds = true
        return label
    }()
    let NutritionLbl : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = "Nutrition:"
        label.font = UIFont.init(name: "Chalkboard SE Bold", size: 20)
       
        return label
    }()
    let IngredientsLbl : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = "Ingredients:"
        label.font = UIFont.init(name: "Chalkboard SE Bold", size: 20)
       
        return label
    }()
    
    
    let listingredientsLbl : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 5
        label.textColor = .black
        label.text = "Sprouts(halved), olive oil, sliced almods, sailt, pepper"
        label.font = UIFont.init(name: "Chalkboard SE Bold", size: 18)
       
        return label
    }()
    let DiscriptionLbl : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = "Discription:"
        label.font = UIFont.init(name: "Chalkboard SE Bold", size: 20)
       
        return label
    }()
    let coreDiscription : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 30
        label.textColor = .black
        label.text = "Saute diced turkey bacon, shallots, and garlic in a large pan with oil. I use shallots and freshly minced garlic to add more flavor to this side dish. The shallots give the dish a bit of subtle sweetness when they are cooked.Add your halved Brussels Sprouts, stir, and allow them to cook undisturbed for a few minutes to get that nice golden brown color. Stir again, cover with a lid, and let them steam for a few minutes, or until they are cooked to your liking.Then add the pine nuts and Parmesan cheese. Stir in some fresh herbs. Top generously with freshly grated Parmesan."
        label.font = UIFont.init(name: "Chalkboard SE Bold", size: 18)
       
        return label
    }()
    let ReviewsLbl : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = "Reviews"
        label.font = UIFont.init(name: "Chalkboard SE Bold", size: 20)
       
        return label
    }()
    let cosmosView : CosmosView = {
        let view = CosmosView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        
        return view
        
    }()
    
    var ontap = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let dataF = dataF {
            imageV.image = UIImage(named: dataF.image)
            titleLable.text = dataF.title
            sourceNameLable.text = dataF.source
            timeLbl.text = dataF.timeCooking
            calorisLbl.text = dataF.Nutrition
            listingredientsLbl.text = dataF.ingredients
            coreDiscription.text = dataF.discription
        }
        
        cosmosView.didTouchCosmos = { rating in
            print("\(rating)")
        }
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapImage))
        logoImage.addGestureRecognizer(tapGesture)
        logoImage.isUserInteractionEnabled = true
        
        setupLayout()
        logoImage.layer.cornerRadius = 20
        
       
        
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.darkContent
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        scrollView.contentSize = CGSize(width: view.bounds.width, height: view.bounds.height*1.9)
        
       
        
        
       
    }
   
    
    func setupLayout(){
        view.addSubview(scrollView)
        scrollView.addSubview(imageV)
        scrollView.addSubview(botView)
//        imageV.addSubview(backImage)
        imageV.addSubview(titleLable)
        imageV.addSubview(sourceNameLable)
        imageV.addSubview(timeLbl)
        scrollView.addSubview(logoImage)
        scrollView.addSubview(backBt)
        
        botView.addSubview(calorisLbl)
        botView.addSubview(NutritionLbl)
        botView.addSubview(IngredientsLbl)
        botView.addSubview(listingredientsLbl)
        botView.addSubview(DiscriptionLbl)
        botView.addSubview(coreDiscription)
        botView.addSubview(ReviewsLbl)
        botView.addSubview(cosmosView)

        

        
        
        scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 0).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: 0).isActive = true
        scrollView.heightAnchor.constraint(equalTo: view.heightAnchor,constant: 0).isActive = true
        
        imageV.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 1).isActive = true
        imageV.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: -46).isActive = true

        imageV.heightAnchor.constraint(equalToConstant: view.bounds.height*1.2).isActive = true
        
        backBt.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        backBt.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
       
        
        logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        logoImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        logoImage.heightAnchor.constraint(equalToConstant: 40).isActive = true
        logoImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        botView.topAnchor.constraint(equalTo: imageV.bottomAnchor, constant: 0).isActive = true
        botView.heightAnchor.constraint(equalToConstant: view.bounds.height).isActive = true
        botView.leadingAnchor.constraint(equalTo: imageV.leadingAnchor, constant: 0).isActive = true
        botView.trailingAnchor.constraint(equalTo: imageV.trailingAnchor, constant: 0).isActive = true
        

        titleLable.leadingAnchor.constraint(equalTo: imageV.leadingAnchor, constant: 20).isActive = true
        titleLable.bottomAnchor.constraint(equalTo: imageV.bottomAnchor, constant: -60).isActive = true
        
        sourceNameLable.leadingAnchor.constraint(equalTo: imageV.leadingAnchor, constant: 20).isActive = true
        sourceNameLable.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: 10).isActive = true
        
        timeLbl.trailingAnchor.constraint(equalTo: imageV.trailingAnchor, constant: -20).isActive = true
        timeLbl.bottomAnchor.constraint(equalTo: imageV.bottomAnchor, constant: -30).isActive = true
        
        
       
        NutritionLbl.topAnchor.constraint(equalTo: botView.topAnchor, constant: 0).isActive = true
        NutritionLbl.leadingAnchor.constraint(equalTo: botView.leadingAnchor, constant: 10).isActive = true
        
        calorisLbl.topAnchor.constraint(equalTo: botView.topAnchor, constant: 2).isActive = true
        calorisLbl.leadingAnchor.constraint(equalTo: NutritionLbl.trailingAnchor, constant: 5).isActive = true
        
        
        IngredientsLbl.topAnchor.constraint(equalTo: calorisLbl.bottomAnchor, constant: 5).isActive = true
        IngredientsLbl.leadingAnchor.constraint(equalTo: botView.leadingAnchor, constant: 10).isActive = true
       
        
        listingredientsLbl.leadingAnchor.constraint(equalTo: IngredientsLbl.trailingAnchor, constant: 5).isActive = true
        listingredientsLbl.topAnchor.constraint(equalTo: calorisLbl.bottomAnchor, constant: 5).isActive = true
        listingredientsLbl.trailingAnchor.constraint(equalTo: botView.trailingAnchor, constant: 0).isActive = true
        
        DiscriptionLbl.topAnchor.constraint(equalTo: listingredientsLbl.bottomAnchor, constant: 5).isActive = true
        DiscriptionLbl.leadingAnchor.constraint(equalTo: botView.leadingAnchor, constant: 10).isActive = true
        
        coreDiscription.topAnchor.constraint(equalTo: DiscriptionLbl.bottomAnchor, constant: 5).isActive = true
        coreDiscription.leadingAnchor.constraint(equalTo: botView.leadingAnchor, constant: 10).isActive = true
        coreDiscription.trailingAnchor.constraint(equalTo: botView.trailingAnchor, constant: 0).isActive = true
        
        
        
        ReviewsLbl.topAnchor.constraint(equalTo: coreDiscription.bottomAnchor, constant: 20).isActive = true
        ReviewsLbl.leadingAnchor.constraint(equalTo: botView.leadingAnchor, constant: 10).isActive = true
        
        
        cosmosView.topAnchor.constraint(equalTo: ReviewsLbl.bottomAnchor, constant: 10).isActive = true
        cosmosView.centerXAnchor.constraint(equalTo: botView.centerXAnchor, constant: 0).isActive = true
        
        
    }
    @objc func tapImage() {
        if ontap  {
            logoImage.image = UIImage(named: "logo")
            UIView.transition(with: logoImage, duration: 0.5, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            print(" da tao")
        }else  {
            logoImage.image = UIImage(named: "cooking")
            UIView.transition(with: logoImage, duration: 0.5, options: .transitionFlipFromRight, animations: nil, completion: nil)
            print("swap")
            
        }
        ontap = !ontap
        
    }
    
    
    @objc func onBack() {
        dismiss(animated: true, completion: nil)
       print("back")
    }
}
