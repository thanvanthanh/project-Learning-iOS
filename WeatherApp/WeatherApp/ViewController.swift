//
//  ViewController.swift
//  WeatherApp
//
//  Created by Thân Văn Thanh on 4/13/21.
//

import UIKit

class ViewController: UIViewController {
    
    var datasTime = [timeData]()
    var datasDay = [dayData]()
    
    
    let collectionTime : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .none
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(TimeCollectionViewCell.self, forCellWithReuseIdentifier: "TimeCollectionViewCell")
        layout.scrollDirection = .horizontal
        
        return collectionView
    }()
    
    let collectionDay : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .none
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(DayCollectionViewCell.self, forCellWithReuseIdentifier: "DayCollectionViewCell")
        layout.scrollDirection = .vertical
        return collectionView
        
    }()
    
    
    let weekDayLabel : UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "Thứ Tư"
        lb.textColor = .white
        lb.font = UIFont.systemFont(ofSize: 25)
        
        return lb
    }()
    
    let toDayLabel : UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "HÔM NAY"
        lb.textColor = .white
        lb.font = UIFont.boldSystemFont(ofSize: 18)
        return lb
    }()
    let tempMax : UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "29"
        lb.textColor = .white
        lb.font = UIFont.systemFont(ofSize: 25)
        return lb
    }()
    let tempMin : UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "24"
        lb.textColor = .lightText
        lb.font = UIFont.systemFont(ofSize: 25)
        return lb
    }()
    
    
    let view1 : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        view.layer.opacity = 0.1

        return view
    }()
    let view2 : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        view.layer.opacity = 0.1
        return view
    }()
    let backgroundView : UIView = {
        let background = UIView()
        background.translatesAutoresizingMaskIntoConstraints = false
        background.backgroundColor = .blue
        return background
    }()
    
    let backgroundImage : UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "original")
        return img
    }()
    let cityLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hà Nội"
        label.font = UIFont.systemFont(ofSize: 40)
        label.textColor = .white
        return label
    }()
    let presentLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Trời nhiều mây"
        label.font = UIFont.systemFont(ofSize: 25)
        label.textColor = .lightText
        return label
    }()
    let tempPresentLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "28°"
        //   label.font = UIFont(name: "Times New Roman", size: 85)
        label.font = UIFont.systemFont(ofSize: 85)
        label.textColor = .white
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datasTime = creatTimeData()
        datasDay = creatDayData()
        setuoLayout()
        
        collectionTime.delegate = self
        collectionTime.dataSource = self
        
        collectionDay.delegate = self
        collectionDay.dataSource = self
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
    func setuoLayout(){
        self.view.addSubview(backgroundView)
        backgroundView.addSubview(backgroundImage)
        backgroundView.addSubview(cityLabel)
        backgroundView.addSubview(tempPresentLabel)
        backgroundView.addSubview(presentLabel)
        backgroundView.addSubview(weekDayLabel)
        backgroundView.addSubview(toDayLabel)
        backgroundView.addSubview(tempMax)
        backgroundView.addSubview(tempMin)
        backgroundView.addSubview(view1)
        backgroundView.addSubview(view2)
        backgroundView.addSubview(collectionTime)
        backgroundView.addSubview(collectionDay)
        
        
        
        
        backgroundView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        
        backgroundImage.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 0).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant: 0).isActive = true
        backgroundImage.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 0).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: 0).isActive = true
        
        cityLabel.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 80).isActive = true
        cityLabel.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor, constant: 0).isActive = true
        
        presentLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 5).isActive = true
        presentLabel.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor, constant: 0).isActive = true
        
        tempPresentLabel.topAnchor.constraint(equalTo: presentLabel.bottomAnchor, constant: 0).isActive = true
        tempPresentLabel.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor, constant: 0).isActive = true
        
        
        collectionTime.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor, constant: 0).isActive = true
        collectionTime.heightAnchor.constraint(equalTo: backgroundView.heightAnchor, multiplier: 0.12).isActive = true
        collectionTime.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor, constant: 0).isActive = true
        collectionTime.widthAnchor.constraint(equalTo: backgroundView.widthAnchor, multiplier: 1).isActive = true
        
        collectionDay.topAnchor.constraint(equalTo: view2.bottomAnchor, constant: 1).isActive = true
        collectionDay.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor , constant: 0).isActive = true
        collectionDay.widthAnchor.constraint(equalTo: backgroundView.widthAnchor, multiplier: 1).isActive = true
        collectionDay.heightAnchor.constraint(equalTo: backgroundView.heightAnchor, multiplier: 1/3).isActive = true
        
        view1.bottomAnchor.constraint(equalTo: collectionTime.topAnchor, constant: -5).isActive = true
        view1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        view1.heightAnchor.constraint(equalToConstant: 1).isActive = true
        view1.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        
        view2.topAnchor.constraint(equalTo: collectionTime.bottomAnchor, constant: 5).isActive = true
        view2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        view2.heightAnchor.constraint(equalToConstant: 1).isActive = true
        view2.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        
        weekDayLabel.bottomAnchor.constraint(equalTo: view1.topAnchor, constant: -10).isActive = true
        weekDayLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5).isActive = true
        weekDayLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/5).isActive = true
        weekDayLabel.heightAnchor.constraint(equalTo: collectionTime.heightAnchor, multiplier: 1/4).isActive = true
        
        toDayLabel.bottomAnchor.constraint(equalTo: view1.bottomAnchor, constant: -10).isActive = true
        toDayLabel.leadingAnchor.constraint(equalTo: weekDayLabel.trailingAnchor, constant: 5).isActive = true
        toDayLabel.widthAnchor.constraint(equalTo: weekDayLabel.widthAnchor, multiplier: 1.5).isActive = true
        toDayLabel.heightAnchor.constraint(equalTo: weekDayLabel.heightAnchor, multiplier: 1).isActive = true
        
        tempMin.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        tempMin.bottomAnchor.constraint(equalTo: toDayLabel.bottomAnchor, constant: 1).isActive = true
        
        tempMax.trailingAnchor.constraint(equalTo: tempMin.leadingAnchor, constant: -15).isActive = true
        tempMax.bottomAnchor.constraint(equalTo: tempMin.bottomAnchor, constant: 0).isActive = true
        
    }
}
extension ViewController : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if (collectionView == collectionDay){
            let width = collectionView.bounds.width
            let height = collectionView.bounds.height / 7
            return CGSize(width: width, height: height)
        }
        let heith = collectionView.bounds.height
        let width = collectionView.bounds.width / 6
        return CGSize(width: width, height: heith)
        
    }
}
extension ViewController : UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == collectionDay){
            return datasDay.count
        }
        return datasTime.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionTime {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TimeCollectionViewCell", for: indexPath) as! TimeCollectionViewCell
            cell.time = datasTime[indexPath.row]
            return cell
        }
        else {
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "DayCollectionViewCell", for: indexPath) as! DayCollectionViewCell
            cell2.day = datasDay[indexPath.row]
            return cell2
        }
    }
}


extension ViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        if (collectionView == collectionDay){
            return 1 }
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if (collectionView == collectionDay){
            return 1 }
        return 2
    }
}

