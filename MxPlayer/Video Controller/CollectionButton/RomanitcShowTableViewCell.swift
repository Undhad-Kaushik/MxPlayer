//
//  RomanitcShowTableViewCell.swift
//  MxPlayer
//
//  Created by undhad kaushik on 10/03/23.
//

import UIKit

class RomanitcShowTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var ImageRomanitcShow: UIImageView!
    @IBOutlet weak var nameRomanitcShowLabel: UILabel!
    @IBOutlet weak var subTitleRomanitcShowLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
