//
//  MoviewNotMisdTableViewCell.swift
//  MxPlayer
//
//  Created by undhad kaushik on 10/03/23.
//

import UIKit

class MoviewNotMisdTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var ImageMoviewNotMisd: UIImageView!
    @IBOutlet weak var nameMoviewNotMisdLabel: UILabel!
    @IBOutlet weak var subTitleMoviewNotMisdLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
