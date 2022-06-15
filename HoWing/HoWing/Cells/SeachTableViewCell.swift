//
//  SeachTableViewCell.swift
//  HoWing
//
//  Created by Ishipo on 08/05/2021.
//

import UIKit

class SeachTableViewCell: UITableViewCell {

    var data : mainData? {
        didSet {
            if let data = data {
                imageV.image = UIImage(named: data.image )
                titleLable.text = data.title
                sourceNameLable.text = data.source
                
            }
        }
    }
    
    
    
    let imageV : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "dish1")
        image.contentMode = .scaleAspectFill
        image.layer.borderWidth = 0.5
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.masksToBounds = true
        return image
    }()
    
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)

        return view
        
    }()
    
    let titleLable : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 2
        label.text = "Pan Fried Brussels"
        label.font = UIFont.init(name: "Chalkboard SE Bold", size: 24)
        return label
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
    let logoAction : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 20
        return image
    }()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.backgroundColor = .clear
        
        setupCells()
        
    }

    
    
    func setupCells() {
        self.addSubview(imageV)
        imageV.addSubview(containerView)
        containerView.addSubview(titleLable)
        containerView.addSubview(sourceNameLable)
        
        
        imageV.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        imageV.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        imageV.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        imageV.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        
        containerView.topAnchor.constraint(equalTo: imageV.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: imageV.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: imageV.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: imageV.bottomAnchor, constant: 0).isActive = true
        containerView.centerXAnchor.constraint(equalTo: imageV.centerXAnchor, constant: 0).isActive = true
        containerView.centerYAnchor.constraint(equalTo: imageV.centerYAnchor, constant: 0).isActive = true

        
        sourceNameLable.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -20).isActive = true
        sourceNameLable.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20).isActive = true
        
        
        
        
        titleLable.bottomAnchor.constraint(equalTo: sourceNameLable.topAnchor, constant: -10).isActive = true
        titleLable.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20).isActive = true

        
        
        
        
    }

}
