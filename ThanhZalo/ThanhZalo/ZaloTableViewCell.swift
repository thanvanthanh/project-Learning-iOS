//
//  ZaloTableViewCell.swift
//  ThanhZalo
//
//  Created by Thân Văn Thanh on 4/10/21.
//

import UIKit

class ZaloTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var avtImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
       
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.backgroundColor = UIColor(red: 0.10, green: 0.10, blue: 0.10, alpha: 1.00)
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor(red: 0.14, green: 0.14, blue: 0.14, alpha: 1.00)
        self.selectedBackgroundView = backgroundView

        // Configure the view for the selected state
    }
    
}
