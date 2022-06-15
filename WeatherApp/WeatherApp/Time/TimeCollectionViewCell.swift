//
//  TimeCollectionViewCell.swift
//  WeatherApp
//
//  Created by Thân Văn Thanh on 4/14/21.
//

import UIKit

class TimeCollectionViewCell: UICollectionViewCell {
    let containerView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .none
        return view
    }()
   
    
    let timeLabel : UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = ""
        lb.textColor = .white
        lb.numberOfLines = 0
        lb.textAlignment = .center
        return lb
    }()
    
    let iconsView : UIImageView = {
        let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.image = UIImage(systemName:"sun.max.fill")
        icon.tintColor = .white
//        icon.backgroundColor = .black
        return icon
    }()
    let tempLabel : UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "65°"
        lb.textColor = .white
        lb.textAlignment = .center
        return lb
    }()
    var time: timeData? {
        didSet {
            if let time = time {
                iconsView.image = UIImage(systemName: time.icon)
                timeLabel.text = time.time
                tempLabel.text = time.temp
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupLayout()
    }
    func setupLayout(){
        self.addSubview(containerView)
        containerView.addSubview(timeLabel)
        containerView.addSubview(iconsView)
        containerView.addSubview(tempLabel)
    
    
        
        containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        
        timeLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor , constant: 0).isActive = true
        timeLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 1).isActive = true
        timeLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 1).isActive = true
        timeLabel.bottomAnchor.constraint(equalTo: iconsView.topAnchor, constant: -10).isActive = true
        
      
       
        iconsView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        iconsView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: 0).isActive = true

        
        tempLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        tempLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 1).isActive = true
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
