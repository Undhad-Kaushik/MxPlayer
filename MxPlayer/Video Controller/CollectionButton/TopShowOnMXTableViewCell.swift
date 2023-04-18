//
//  TopShowOnMXTableViewCell.swift
//  MxPlayer
//
//  Created by undhad kaushik on 10/03/23.
//

import UIKit

class TopShowOnMXTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var imageTopshowMX: UIImageView!
    @IBOutlet weak var nameTopshowMXLAbel: UILabel!
    @IBOutlet weak var subTitleLAbel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
