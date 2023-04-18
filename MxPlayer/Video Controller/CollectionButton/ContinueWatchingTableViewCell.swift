//
//  ContinueWatchingTableViewCell.swift
//  MxPlayer
//
//  Created by undhad kaushik on 09/03/23.
//

import UIKit

class ContinueWatchingTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var ContinueimageView: UIImageView!
    @IBOutlet weak var MovieNameLabel: UILabel!
    @IBOutlet weak var subTitelLabel: UILabel!
    
    // MARK: - Life Cycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
