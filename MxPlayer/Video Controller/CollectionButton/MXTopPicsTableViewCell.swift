//
//  MXTopPicsTableViewCell.swift
//  MxPlayer
//
//  Created by undhad kaushik on 10/03/23.
//

import UIKit

class MXTopPicsTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var imageMXTopPics: UIImageView!
    @IBOutlet weak var nameMXTopPicsLabel: UILabel!
    @IBOutlet weak var subTitleMXTopPicsLAbel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
