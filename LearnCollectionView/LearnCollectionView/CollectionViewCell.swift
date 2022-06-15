//
//  CollectionViewCell.swift
//  LearnCollectionView
//
//  Created by Thân Văn Thanh on 4/13/21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    let containerView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = .purple
        return view
    }()
    
    let photoImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "gamecontroller.fill")
        return imageView
    }()
    
    let titleLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Game"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupLayout()
    }
    
    func setupLayout(){
        self.addSubview(containerView)
        containerView.addSubview(photoImageView)
        containerView.addSubview(titleLabel)
        
        containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        
        titleLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -5).isActive = true
        
        photoImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10).isActive = true
        photoImageView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        photoImageView.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.7).isActive = true
        photoImageView.bottomAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 5).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
