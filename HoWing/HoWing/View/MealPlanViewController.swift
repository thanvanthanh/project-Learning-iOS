//
//  FavoritesViewController.swift
//  HoWing
//
//  Created by Ishipo on 28/04/2021.
//

import UIKit

class MealPlanViewController: UIViewController {
    
    var data = [ "deal3" , "slide1", "meal2"]
    var time : Timer?
    var counter = 0
    
    let colectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout ()
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.register(MealPCollectionViewCell.self, forCellWithReuseIdentifier: "MealPCollectionViewCell")
        view.backgroundColor = .clear
        layout.scrollDirection = .horizontal
        view.showsHorizontalScrollIndicator = false
        view.isPagingEnabled = true
        
        
        return view
    }()
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.93, green: 0.95, blue: 0.93, alpha: 1.00)
        
        
        return view
    }()
    let createPlan: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Create My Plan", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor(red: 0.07, green: 0.52, blue: 0.46, alpha: 1.00)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(onCreate), for: .touchUpInside)
        return button
    }()
    let learnMore: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Learn More", for: .normal)
        button.setTitleColor(UIColor(red: 0.07, green: 0.52, blue: 0.46, alpha: 1.00), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(onCreate), for: .touchUpInside)
        return button
    }()
    let pageControl : UIPageControl = {
        let page = UIPageControl(frame: CGRect(x: 0, y: 530 , width: 20, height: 20))
        page.tintColor = UIColor.red
        page.pageIndicatorTintColor = UIColor.lightGray
        page.currentPageIndicatorTintColor = UIColor.systemBlue
        page.numberOfPages = 3
        return page
        
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let titleLbl = UILabel(frame: CGRect (x: 0, y: 0, width: view.bounds.width - 30, height: view.bounds.height))
        titleLbl.textColor = .black
        titleLbl.text = "MealPlan"
        titleLbl.font = UIFont(name: "Times New Roman", size: 23)
        navigationItem.titleView = titleLbl
        navigationController?.navigationBar.backgroundColor = UIColor(red: 0.93, green: 0.95, blue: 0.93, alpha: 1.00)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()

        let edit = UIBarButtonItem(image: UIImage(systemName: "ellipsis"), style: .done, target: self, action: #selector(onTap))
        navigationItem.rightBarButtonItem = edit
        view.backgroundColor = UIColor(red: 0.93, green: 0.95, blue: 0.93, alpha: 1.00)
        colectionView.delegate = self
        colectionView.dataSource = self
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.darkContent
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupLayout()

        colectionView.reloadData()
        self.time = Timer.scheduledTimer(timeInterval: 4.0 , target: self, selector: #selector(self.sliderCollectionView), userInfo: nil , repeats: true)
            
    }
    
    func setupLayout(){
        view.addSubview(containerView)
        containerView.addSubview(colectionView)
        containerView.addSubview(createPlan)
        containerView.addSubview(learnMore)
        containerView.addSubview(pageControl)
        
        containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true

        colectionView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 90).isActive = true

        colectionView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
//        colectionView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 0).isActive = true
//        colectionView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0).isActive = true
        colectionView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        colectionView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        createPlan.topAnchor.constraint(equalTo: colectionView.bottomAnchor, constant: 30).isActive = true
        createPlan.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        createPlan.heightAnchor.constraint(equalToConstant: 35).isActive = true
        createPlan.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        learnMore.topAnchor.constraint(equalTo: createPlan.bottomAnchor, constant: 20).isActive = true
        learnMore.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        

    }
    @objc func sliderCollectionView() {
        
        if counter < data.count - 1 {

            counter = counter + 1
            
        }else{
            counter = 0


        }


       colectionView.scrollToItem(at: IndexPath(item: counter, section: 0), at: .centeredHorizontally, animated: true)
        pageControl.currentPage = counter

    }
   
    @objc func onCreate() {
        
    }
    @objc func onTap() {
        
    }
}
extension MealPlanViewController :  UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = colectionView.frame.size
        return CGSize(width: size.width, height: size.height)
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = colectionView.dequeueReusableCell(withReuseIdentifier: "MealPCollectionViewCell", for: indexPath) as! MealPCollectionViewCell
        
        cell.imageV.image = UIImage(named: data[indexPath.row])
        
//        cell.pageControl.numberOfPages = data.count
//        cell.pageControl.currentPage = counter
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
}
