//
//  ZaloTableViewCell.swift
//  ZaloApp
//
//  Created by Taof on 4/13/21.
//

import UIKit

class ZaloTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    var zalo: Zalo? {
        didSet {
            if let zalo = zalo {
                self.avatarImageView.image = UIImage(named: zalo.imageName)
                nameLabel.text = zalo.name
                dateLabel.text = zalo.date
                messageLabel.text = zalo.message
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        avatarImageView.contentMode = .scaleAspectFill
        avatarImageView.layer.cornerRadius = avatarImageView.bounds.height/2
        avatarImageView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
