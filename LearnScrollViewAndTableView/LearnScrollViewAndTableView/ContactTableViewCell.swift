//
//  ContactTableViewCell.swift
//  LearnScrollViewAndTableView
//
//  Created by Thân Văn Thanh on 4/9/21.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    
    let tableView : UIView = {
      let  view = UIView ()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow
        return view
    }()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
        setupLayout()
        
    }
    func setupLayout() {
        self.addSubview(tableView)
        
        
        tableView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true

        
    }

}
