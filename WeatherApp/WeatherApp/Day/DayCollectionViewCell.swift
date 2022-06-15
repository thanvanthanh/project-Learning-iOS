//
//  DayCollectionViewCell.swift
//  WeatherApp
//
//  Created by Thân Văn Thanh on 4/14/21.
//

import UIKit

class DayCollectionViewCell: UICollectionViewCell {
    let containerView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .none
        return view
    }()
    
    let dayLabel : UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = ""
        lb.textColor = .white
        lb.numberOfLines = 0
        lb.textAlignment = .center
        return lb
    }()
    
    let dayImage : UIImageView = {
        let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.image = UIImage(systemName:"sun.max.fill")
        icon.tintColor = .white
//        icon.backgroundColor = .black
        return icon
    }()
    let tempMaxLabel : UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = ""
        lb.textColor = .white
        lb.numberOfLines = 0
        lb.textAlignment = .center
        return lb
    }()
    let tempMinLabel : UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = ""
        lb.textColor = .lightText
        lb.numberOfLines = 0
        lb.textAlignment = .center
        return lb
    }()
    var day: dayData? {
        didSet {
            if let day = day {
                dayImage.image = UIImage(systemName: day.icon)
                dayLabel.text = day.day
                tempMaxLabel.text = day.max
                tempMinLabel.text = day.min
            }
        }
    }
    override init(frame:CGRect) {
        super.init(frame: frame)
        
        setupLayout()
    }
    func setupLayout(){
        self.addSubview(containerView)
        containerView.addSubview(dayLabel)
        containerView.addSubview(dayLabel)
        containerView.addSubview(dayImage)
        containerView.addSubview(tempMaxLabel)
        containerView.addSubview(tempMinLabel)
        
        containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        
        dayLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10).isActive = true
        dayLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 0).isActive = true
        
        dayImage.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: 0).isActive = true
        dayImage.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        
        tempMinLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10).isActive = true
        tempMinLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: 0).isActive = true
        
        tempMaxLabel.trailingAnchor.constraint(equalTo: tempMinLabel.leadingAnchor, constant:-10).isActive = true
        tempMaxLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: 0).isActive = true
        
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

