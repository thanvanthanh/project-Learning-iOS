//
//  ViewController.swift
//  HoWing
//
//

import UIKit
import CardSlider



class HomeViewController: UIViewController, CardSliderDataSource {
   
    
    var time : Timer?
    
    var counter = 0
    
    var dataColection = [ "image4" , "image5", "image1", "image3" , "image2"]
    var dataT = [mainData]()
    
    var dataE = [Item]()
    
    let topColectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let colectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        colectionView.translatesAutoresizingMaskIntoConstraints = false
        colectionView.register(HomeCollectionViewCell.self, forCellWithReuseIdentifier: "HomeCollectionViewCell")

        colectionView.backgroundColor = .clear
        layout.scrollDirection = .horizontal
        colectionView.isPagingEnabled = true
        colectionView.showsHorizontalScrollIndicator = false
        colectionView.layer.cornerRadius = 15
        
        
        return colectionView
    }()
    
    
    let tableView : UITableView = {
        let view = UITableView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.showsVerticalScrollIndicator = false
        view.backgroundColor = UIColor(red: 0.93, green: 0.95, blue: 0.93, alpha: 1.00)
        view.separatorStyle = .none
        view.tableFooterView = UIView()

        
        return view
    }()
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.93, green: 0.95, blue: 0.93, alpha: 1.00)
        
        
        return view
    }()
    
//    let pageControl : UIPageControl = {
//        let page = UIPageControl(frame: CGRect(x: 0, y: 180 , width: 20, height: 20))
//        page.tintColor = UIColor.red
//        page.pageIndicatorTintColor = UIColor.lightGray
//        page.currentPageIndicatorTintColor = UIColor.systemBlue
//
//        return page
//
//    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        dataE = updateCardSlider()
        dataT = updatedata()
        topColectionView.delegate = self
        topColectionView.dataSource = self
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(HomeTableViewCell.self, forCellReuseIdentifier: "HomeTableViewCell")
        

        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()

        let titleLbl = UILabel(frame: CGRect (x: 0, y: 0, width: view.bounds.width - 30, height: view.bounds.height))
        titleLbl.textColor = .orange
        titleLbl.text = "HoWing"
        titleLbl.font = UIFont(name: "Papyrus", size: 20)
        navigationItem.titleView = titleLbl
        
        let foryouButton = UIBarButtonItem(title: " Just For You", style: .done
                                           , target: self, action: .none)
        foryouButton.tintColor = .black
        navigationItem.rightBarButtonItem = foryouButton
        
        let exploreButton = UIBarButtonItem(title: "Explore", style: .done,
                                            target: self, action: #selector(onExplore))
        exploreButton.tintColor = .black
        navigationItem.rightBarButtonItems = [foryouButton, exploreButton ]
        
//        pageControl.numberOfPages = dataColection.count
        DispatchQueue.main.async {
            self.time = Timer.scheduledTimer(timeInterval: 2.5 , target: self, selector: #selector(self.sliderCollectionView), userInfo: nil , repeats: true)
            
        }
        
    
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.darkContent
    }
        
   
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
            
        
        tableView.reloadData()
        setupLayout()
        
        
        
        
    }
   
    
    
    func setupLayout(){
        view.addSubview(containerView)
        containerView.addSubview(topColectionView)
        containerView.addSubview(tableView)
        
        
        containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true


        topColectionView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        topColectionView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10).isActive = true
        topColectionView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -15).isActive = true

        topColectionView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25).isActive = true
        topColectionView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 95).isActive = true
        
        tableView.topAnchor.constraint(equalTo: topColectionView.bottomAnchor, constant: 05).isActive = true
        tableView.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 1).isActive = true
        tableView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 0).isActive = true
        
        
    }
    
    
    
    @objc func sliderCollectionView() {
        
        if counter < dataColection.count - 1  {
            counter += 1
        }else{
            counter = 0
            
            

        }
        
       topColectionView.scrollToItem(at: IndexPath(item: counter, section: 0), at: .centeredHorizontally, animated: true)
    }
   
    @objc func onExplore (){
        
        guard let dataSoure = self as? CardSliderDataSource else {
            return
            
        }
        
        let VC = CardSliderViewController.with(dataSource: self )

        VC.title = "Explore"
        

        VC.modalPresentationStyle = .fullScreen
       present(VC, animated: true, completion: nil)

    }
   
    
    func item(for index: Int) -> CardSliderItem {
        return dataE[index]
    }
    
    func numberOfItems() -> Int {
        return dataE.count
    }
    

}
extension HomeViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataColection.count
        
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = topColectionView.frame.size
        return CGSize(width: size.width, height: size.height)
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = topColectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
        cell.imageV.image = UIImage(named: dataColection[indexPath.row])
        


        
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
extension HomeViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataT.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
        
        cell.swipeGesture()
        cell.selectionStyle = .none
        cell.data = dataT[indexPath.row]
        let animation = cell.makeMoveUpWithBounce(rowHeight: cell.frame.height, duration: 1.0, delayFactor: 0.05)
        let animator = Animator(animation: animation)
        animator.animate(cell: cell, at: indexPath, in: tableView)
        
    
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 320
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        print(dataT[indexPath.row].title)
        
        let inforVC = InfoViewController()
        inforVC.dataF = dataT[indexPath.row]
        
        inforVC.modalPresentationStyle = .fullScreen
        present(inforVC, animated: true, completion: nil)
        
       

    }
    
   
}

