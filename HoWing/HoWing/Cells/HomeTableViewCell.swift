//
//  HomeTableViewCell.swift
//  HoWing
//
//  Created by Ishipo on 28/04/2021.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
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
        image.layer.cornerRadius = 10
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
    
    let menuBt : UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(systemName: "arrowshape.turn.up.backward.2"), for: .normal)
        bt.addTarget(self, action: #selector(tapMenu), for: .touchUpInside)
        bt.sizeToFit()
        
        return bt
    }()
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.backgroundColor = .clear
        
        setupCells()
        swipeGesture()
    }

    
    
    func setupCells() {
        self.addSubview(imageV)
        imageV.addSubview(containerView)
        containerView.addSubview(titleLable)
        containerView.addSubview(sourceNameLable)
        containerView.addSubview(logoAction)
//        containerView.addSubview(menuBt)
        
        
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
        
        logoAction.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -10).isActive = true
        logoAction.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20).isActive = true
        logoAction.heightAnchor.constraint(equalToConstant: 40).isActive = true
        logoAction.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        titleLable.bottomAnchor.constraint(equalTo: sourceNameLable.topAnchor, constant: -10).isActive = true
        titleLable.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20).isActive = true

//        menuBt.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: 0).isActive = true
//        menuBt.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0).isActive = true
//        menuBt.heightAnchor.constraint(equalToConstant: 20).isActive = true
//        menuBt.widthAnchor.constraint(equalToConstant: 20).isActive = true

        
        
    }
    
    @objc func tapMenu() {
        
        print("click")
    }
    
    func swipeGesture() {
        let left = UISwipeGestureRecognizer(target: self, action: #selector(swipeLeft))
        left.direction = .left
        containerView.addGestureRecognizer(left)
        
        let right = UISwipeGestureRecognizer(target: self, action: #selector(swipeRight))
        right.direction = .right
        containerView.addGestureRecognizer(right)
    }
    
    @objc func swipeLeft() {
        
        UIView.animate(withDuration: 1, animations: {
            self.containerView.frame.origin.x += self.imageV.frame.width/2
            
        })
    }
    
    
    @objc func swipeRight() {
        UIView.animate(withDuration: 1, animations: {
            self.containerView.frame.origin.x -= self.imageV.frame.width/2
            
        })
        
    }
    
    
    func makeMoveUpWithBounce(rowHeight: CGFloat, duration: TimeInterval, delayFactor: Double) -> Animation {
        return { cell, indexPath, tableView in
            cell.transform = CGAffineTransform(translationX: -rowHeight, y: 0)
            cell.alpha = 0
            UIView.animate(
                withDuration: duration,
                delay: delayFactor * Double(indexPath.row / 100),
                usingSpringWithDamping: 0.8,
                initialSpringVelocity: 0.1,
                options: [.curveEaseOut],
                animations: {
                    cell.transform = CGAffineTransform(translationX: 0, y: 0)
                    cell.alpha = 1
                })
            
        }
    }
}
