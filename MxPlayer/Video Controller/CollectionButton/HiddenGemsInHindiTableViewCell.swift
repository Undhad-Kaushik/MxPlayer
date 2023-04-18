//
//  HiddenGemsInHindiTableViewCell.swift
//  MxPlayer
//
//  Created by undhad kaushik on 10/03/23.
//

import UIKit

class HiddenGemsInHindiTableViewCell: UITableViewCell {

    // MARK: - Outlets
    @IBOutlet weak var imageHiddenGems: UIImageView!
    @IBOutlet weak var nameHiddenGemsLabel: UILabel!
    @IBOutlet weak var subTitleHiddenGemsLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
