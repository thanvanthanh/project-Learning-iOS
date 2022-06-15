//
//  MealPCollectionViewCell.swift
//  HoWing
//
//  Created by Ishipo on 10/05/2021.
//

import UIKit

class MealPCollectionViewCell: UICollectionViewCell {
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .none
        return view
        
        
    }()
   
    let imageV : UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "plan1")
//        view.contentMode = .scaleAspectFill
        
        return view
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        cellConfig()
        
    }
    func cellConfig () {
        self.addSubview(containerView)
        containerView.addSubview(imageV)
        
        containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        
        imageV.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0).isActive = true
        imageV.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 20).isActive = true
        imageV.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        imageV.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true


    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
