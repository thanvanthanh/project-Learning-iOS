//
//  ZaloTableViewCell.swift
//  LearnScrollViewAndTableView
//
//  Created by Thân Văn Thanh on 4/9/21.
//

import UIKit

class ZaloTableViewCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var mesageLabel: UILabel!
    
    // lam viec voi cac doi tuong co giao dien keo tha
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        nameLabel.textColor = UIColor.red
        mesageLabel.textColor = .blue
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
