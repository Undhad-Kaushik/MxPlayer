//
//  FantasyShowInVDesiTableViewCell.swift
//  MxPlayer
//
//  Created by undhad kaushik on 10/03/23.
//

import UIKit

class FantasyShowInVDesiTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var imageFantasyShow: UIImageView!
    @IBOutlet weak var nameFantasyShowLabel: UILabel!
    @IBOutlet weak var subTitleFantasyShowLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
